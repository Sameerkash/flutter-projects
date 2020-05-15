import 'dart:async';
import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ddd/domain/auth/auth_failure.dart';
import 'package:flutter_ddd/domain/auth/i_auth_facade.dart';
import 'package:flutter_ddd/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade);

  @override
  SignInFormState get initialState => SignInFormState.initail();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChaned: (e) async* {
        yield state.copyWith(
          emailAdress: EmailAdress(e.emailStr),
          authFailureorSuccess: none(),
        );
      },
      passwordChaned: (e) async* {
        yield state.copyWith(
          password: Password(e.passStr),
          authFailureorSuccess: none(),
        );
      },
      registerWithEmailAndPasswordPress: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.registerWithEmailAndPassword);
      },
      signInWithEmailAndPasswordPress: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.siginWithEmailAndPassword);
      },
      signInWithGoogle: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureorSuccess: none(),
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authFailureorSuccess: some(failureOrSuccess),
        );
      },
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {EmailAdress emailAdress, Password password})
          forwardedCall) async* {
    final isEmailValid = state.emailAdress.isValid();
    final isPasswordValid = state.password.isValid();
    Either<AuthFailure, Unit> failureOrSuccess;
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureorSuccess: none(),
      );
    }

    failureOrSuccess = await forwardedCall(
      emailAdress: state.emailAdress,
      password: state.password,
    );
    yield state.copyWith(
      isSubmitting: false,
      authFailureorSuccess: some(failureOrSuccess),
    );

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureorSuccess: optionOf(failureOrSuccess),
    );
  }
}
