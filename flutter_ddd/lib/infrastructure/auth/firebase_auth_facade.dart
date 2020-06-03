import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ddd/domain/auth/auth_failure.dart';
import 'package:flutter_ddd/domain/auth/i_auth_facade.dart';
import 'package:flutter_ddd/domain/auth/value_objects.dart';
import 'package:flutter_ddd/domain/auth/user.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import './firebase_user_mapper.dart';

@lazySingleton
@RegisterAs(IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Option<User>> getSignedInUser() => _firebaseAuth
      .currentUser()
      .then((firebaseUser) => optionOf(firebaseUser?.toDomain()));

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAdress emailAdress,
    @required Password password,
  }) async {
    final emailAdressStr = emailAdress.getorCrash();
    final passwordStr = emailAdress.getorCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAdressStr,
        password: passwordStr,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUSe());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> siginWithEmailAndPassword({
    @required EmailAdress emailAdress,
    @required Password password,
  }) async {
    final emailAdressStr = emailAdress.getorCrash();
    final passwordStr = emailAdress.getorCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAdressStr,
        password: passwordStr,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.emailAlreadyInUSe());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.getCredential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);

      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((value) => right(unit));
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }
}
