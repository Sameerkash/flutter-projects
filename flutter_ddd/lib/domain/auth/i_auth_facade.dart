import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ddd/domain/auth/auth_failure.dart';
import 'package:flutter_ddd/domain/auth/value_objects.dart';

// Firebase auth, Google Signin
abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> reisterWithEmailAndPassword({
    @required EmailAdress emailAdress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> siginWithEmailAndPassword({
    @required EmailAdress emailAdress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}