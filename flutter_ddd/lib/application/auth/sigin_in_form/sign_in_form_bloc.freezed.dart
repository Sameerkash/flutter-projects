// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$SignInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChaned(String emailStr),
    @required Result passwordChaned(String passStr),
    @required Result registerWithEmailAndPasswordPress(),
    @required Result signInWithEmailAndPasswordPress(),
    @required Result signInWithGoogle(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChaned(String emailStr),
    Result passwordChaned(String passStr),
    Result registerWithEmailAndPasswordPress(),
    Result signInWithEmailAndPasswordPress(),
    Result signInWithGoogle(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChaned(EmailChaned value),
    @required Result passwordChaned(PasswordChaged value),
    @required
        Result registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        Result signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChaned(EmailChaned value),
    Result passwordChaned(PasswordChaged value),
    Result registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    Result signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  });
}

class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  EmailChaned emailChaned(String emailStr) {
    return EmailChaned(
      emailStr,
    );
  }

  PasswordChaged passwordChaned(String passStr) {
    return PasswordChaged(
      passStr,
    );
  }

  RegisterWithEmailAndPasswordPress registerWithEmailAndPasswordPress() {
    return const RegisterWithEmailAndPasswordPress();
  }

  SignInWithEmailAndPasswordPress signInWithEmailAndPasswordPress() {
    return const SignInWithEmailAndPasswordPress();
  }

  SignInWithGoogle signInWithGoogle() {
    return const SignInWithGoogle();
  }
}

const $SignInFormEvent = _$SignInFormEventTearOff();

class _$EmailChaned with DiagnosticableTreeMixin implements EmailChaned {
  const _$EmailChaned(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.emailChaned(emailStr: $emailStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.emailChaned'))
      ..add(DiagnosticsProperty('emailStr', emailStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChaned &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  _$EmailChaned copyWith({
    Object emailStr = freezed,
  }) {
    return _$EmailChaned(
      emailStr == freezed ? this.emailStr : emailStr as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChaned(String emailStr),
    @required Result passwordChaned(String passStr),
    @required Result registerWithEmailAndPasswordPress(),
    @required Result signInWithEmailAndPasswordPress(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChaned != null);
    assert(passwordChaned != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGoogle != null);
    return emailChaned(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChaned(String emailStr),
    Result passwordChaned(String passStr),
    Result registerWithEmailAndPasswordPress(),
    Result signInWithEmailAndPasswordPress(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChaned != null) {
      return emailChaned(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChaned(EmailChaned value),
    @required Result passwordChaned(PasswordChaged value),
    @required
        Result registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        Result signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChaned != null);
    assert(passwordChaned != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGoogle != null);
    return emailChaned(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChaned(EmailChaned value),
    Result passwordChaned(PasswordChaged value),
    Result registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    Result signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChaned != null) {
      return emailChaned(this);
    }
    return orElse();
  }
}

abstract class EmailChaned implements SignInFormEvent {
  const factory EmailChaned(String emailStr) = _$EmailChaned;

  String get emailStr;

  EmailChaned copyWith({String emailStr});
}

class _$PasswordChaged with DiagnosticableTreeMixin implements PasswordChaged {
  const _$PasswordChaged(this.passStr) : assert(passStr != null);

  @override
  final String passStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.passwordChaned(passStr: $passStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.passwordChaned'))
      ..add(DiagnosticsProperty('passStr', passStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChaged &&
            (identical(other.passStr, passStr) ||
                const DeepCollectionEquality().equals(other.passStr, passStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passStr);

  @override
  _$PasswordChaged copyWith({
    Object passStr = freezed,
  }) {
    return _$PasswordChaged(
      passStr == freezed ? this.passStr : passStr as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChaned(String emailStr),
    @required Result passwordChaned(String passStr),
    @required Result registerWithEmailAndPasswordPress(),
    @required Result signInWithEmailAndPasswordPress(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChaned != null);
    assert(passwordChaned != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGoogle != null);
    return passwordChaned(passStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChaned(String emailStr),
    Result passwordChaned(String passStr),
    Result registerWithEmailAndPasswordPress(),
    Result signInWithEmailAndPasswordPress(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChaned != null) {
      return passwordChaned(passStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChaned(EmailChaned value),
    @required Result passwordChaned(PasswordChaged value),
    @required
        Result registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        Result signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChaned != null);
    assert(passwordChaned != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGoogle != null);
    return passwordChaned(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChaned(EmailChaned value),
    Result passwordChaned(PasswordChaged value),
    Result registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    Result signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChaned != null) {
      return passwordChaned(this);
    }
    return orElse();
  }
}

abstract class PasswordChaged implements SignInFormEvent {
  const factory PasswordChaged(String passStr) = _$PasswordChaged;

  String get passStr;

  PasswordChaged copyWith({String passStr});
}

class _$RegisterWithEmailAndPasswordPress
    with DiagnosticableTreeMixin
    implements RegisterWithEmailAndPasswordPress {
  const _$RegisterWithEmailAndPasswordPress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.registerWithEmailAndPasswordPress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.registerWithEmailAndPasswordPress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPasswordPress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChaned(String emailStr),
    @required Result passwordChaned(String passStr),
    @required Result registerWithEmailAndPasswordPress(),
    @required Result signInWithEmailAndPasswordPress(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChaned != null);
    assert(passwordChaned != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGoogle != null);
    return registerWithEmailAndPasswordPress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChaned(String emailStr),
    Result passwordChaned(String passStr),
    Result registerWithEmailAndPasswordPress(),
    Result signInWithEmailAndPasswordPress(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPress != null) {
      return registerWithEmailAndPasswordPress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChaned(EmailChaned value),
    @required Result passwordChaned(PasswordChaged value),
    @required
        Result registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        Result signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChaned != null);
    assert(passwordChaned != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGoogle != null);
    return registerWithEmailAndPasswordPress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChaned(EmailChaned value),
    Result passwordChaned(PasswordChaged value),
    Result registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    Result signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPress != null) {
      return registerWithEmailAndPasswordPress(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPress implements SignInFormEvent {
  const factory RegisterWithEmailAndPasswordPress() =
      _$RegisterWithEmailAndPasswordPress;
}

class _$SignInWithEmailAndPasswordPress
    with DiagnosticableTreeMixin
    implements SignInWithEmailAndPasswordPress {
  const _$SignInWithEmailAndPasswordPress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInWithEmailAndPasswordPress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.signInWithEmailAndPasswordPress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmailAndPasswordPress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChaned(String emailStr),
    @required Result passwordChaned(String passStr),
    @required Result registerWithEmailAndPasswordPress(),
    @required Result signInWithEmailAndPasswordPress(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChaned != null);
    assert(passwordChaned != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGoogle != null);
    return signInWithEmailAndPasswordPress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChaned(String emailStr),
    Result passwordChaned(String passStr),
    Result registerWithEmailAndPasswordPress(),
    Result signInWithEmailAndPasswordPress(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPress != null) {
      return signInWithEmailAndPasswordPress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChaned(EmailChaned value),
    @required Result passwordChaned(PasswordChaged value),
    @required
        Result registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        Result signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChaned != null);
    assert(passwordChaned != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGoogle != null);
    return signInWithEmailAndPasswordPress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChaned(EmailChaned value),
    Result passwordChaned(PasswordChaged value),
    Result registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    Result signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPress != null) {
      return signInWithEmailAndPasswordPress(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPress implements SignInFormEvent {
  const factory SignInWithEmailAndPasswordPress() =
      _$SignInWithEmailAndPasswordPress;
}

class _$SignInWithGoogle
    with DiagnosticableTreeMixin
    implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInWithGoogle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.signInWithGoogle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChaned(String emailStr),
    @required Result passwordChaned(String passStr),
    @required Result registerWithEmailAndPasswordPress(),
    @required Result signInWithEmailAndPasswordPress(),
    @required Result signInWithGoogle(),
  }) {
    assert(emailChaned != null);
    assert(passwordChaned != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGoogle != null);
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChaned(String emailStr),
    Result passwordChaned(String passStr),
    Result registerWithEmailAndPasswordPress(),
    Result signInWithEmailAndPasswordPress(),
    Result signInWithGoogle(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChaned(EmailChaned value),
    @required Result passwordChaned(PasswordChaged value),
    @required
        Result registerWithEmailAndPasswordPress(
            RegisterWithEmailAndPasswordPress value),
    @required
        Result signInWithEmailAndPasswordPress(
            SignInWithEmailAndPasswordPress value),
    @required Result signInWithGoogle(SignInWithGoogle value),
  }) {
    assert(emailChaned != null);
    assert(passwordChaned != null);
    assert(registerWithEmailAndPasswordPress != null);
    assert(signInWithEmailAndPasswordPress != null);
    assert(signInWithGoogle != null);
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChaned(EmailChaned value),
    Result passwordChaned(PasswordChaged value),
    Result registerWithEmailAndPasswordPress(
        RegisterWithEmailAndPasswordPress value),
    Result signInWithEmailAndPasswordPress(
        SignInWithEmailAndPasswordPress value),
    Result signInWithGoogle(SignInWithGoogle value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements SignInFormEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}

mixin _$SignInFormState {
  EmailAdress get emailAdress;
  Password get password;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<AuthFailure, Unit>> get authFailureorSuccess;

  SignInFormState copyWith(
      {EmailAdress emailAdress,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureorSuccess});
}

class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {@required EmailAdress emailAdress,
      @required Password password,
      @required bool isSubmitting,
      @required bool showErrorMessages,
      @required Option<Either<AuthFailure, Unit>> authFailureorSuccess}) {
    return _SignInFormState(
      emailAdress: emailAdress,
      password: password,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      authFailureorSuccess: authFailureorSuccess,
    );
  }
}

const $SignInFormState = _$SignInFormStateTearOff();

class _$_SignInFormState
    with DiagnosticableTreeMixin
    implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAdress,
      @required this.password,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.authFailureorSuccess})
      : assert(emailAdress != null),
        assert(password != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(authFailureorSuccess != null);

  @override
  final EmailAdress emailAdress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureorSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormState(emailAdress: $emailAdress, password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureorSuccess: $authFailureorSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormState'))
      ..add(DiagnosticsProperty('emailAdress', emailAdress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('authFailureorSuccess', authFailureorSuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAdress, emailAdress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAdress, emailAdress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.authFailureorSuccess, authFailureorSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.authFailureorSuccess, authFailureorSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAdress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(authFailureorSuccess);

  @override
  _$_SignInFormState copyWith({
    Object emailAdress = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object authFailureorSuccess = freezed,
  }) {
    return _$_SignInFormState(
      emailAdress: emailAdress == freezed
          ? this.emailAdress
          : emailAdress as EmailAdress,
      password: password == freezed ? this.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? this.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? this.showErrorMessages
          : showErrorMessages as bool,
      authFailureorSuccess: authFailureorSuccess == freezed
          ? this.authFailureorSuccess
          : authFailureorSuccess as Option<Either<AuthFailure, Unit>>,
    );
  }
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required EmailAdress emailAdress,
          @required Password password,
          @required bool isSubmitting,
          @required bool showErrorMessages,
          @required Option<Either<AuthFailure, Unit>> authFailureorSuccess}) =
      _$_SignInFormState;

  @override
  EmailAdress get emailAdress;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureorSuccess;

  @override
  _SignInFormState copyWith(
      {EmailAdress emailAdress,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureorSuccess});
}
