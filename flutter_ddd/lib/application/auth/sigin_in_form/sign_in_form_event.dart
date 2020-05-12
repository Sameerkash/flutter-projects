part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChaned(String emailStr) = EmailChaned;
  const factory SignInFormEvent.passwordChaned(String passStr) = PasswordChaged;

  const factory SignInFormEvent.registerWithEmailAndPasswordPress() =
      RegisterWithEmailAndPasswordPress;
  const factory SignInFormEvent.signInWithEmailAndPasswordPress() =
      SignInWithEmailAndPasswordPress;
  const factory SignInFormEvent.signInWithGoogle() = SignInWithGoogle;
}
