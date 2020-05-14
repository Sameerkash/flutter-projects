part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required EmailAdress emailAdress,
    @required Password password,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<AuthFailure, Unit>> authFailureorSuccess,
  }) = _SignInFormState;

  factory SignInFormState.initail() => SignInFormState(
      emailAdress: EmailAdress(''),
      password: Password(''),
      showErrorMessages: false,
      isSubmitting: false,
      authFailureorSuccess: none());
}
