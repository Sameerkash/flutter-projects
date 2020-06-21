// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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

// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

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

abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

abstract class $EmailChanedCopyWith<$Res> {
  factory $EmailChanedCopyWith(
          EmailChaned value, $Res Function(EmailChaned) then) =
      _$EmailChanedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChanedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChanedCopyWith<$Res> {
  _$EmailChanedCopyWithImpl(
      EmailChaned _value, $Res Function(EmailChaned) _then)
      : super(_value, (v) => _then(v as EmailChaned));

  @override
  EmailChaned get _value => super._value as EmailChaned;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChaned(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

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
  $EmailChanedCopyWith<EmailChaned> get copyWith =>
      _$EmailChanedCopyWithImpl<EmailChaned>(this, _$identity);

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
  $EmailChanedCopyWith<EmailChaned> get copyWith;
}

abstract class $PasswordChagedCopyWith<$Res> {
  factory $PasswordChagedCopyWith(
          PasswordChaged value, $Res Function(PasswordChaged) then) =
      _$PasswordChagedCopyWithImpl<$Res>;
  $Res call({String passStr});
}

class _$PasswordChagedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChagedCopyWith<$Res> {
  _$PasswordChagedCopyWithImpl(
      PasswordChaged _value, $Res Function(PasswordChaged) _then)
      : super(_value, (v) => _then(v as PasswordChaged));

  @override
  PasswordChaged get _value => super._value as PasswordChaged;

  @override
  $Res call({
    Object passStr = freezed,
  }) {
    return _then(PasswordChaged(
      passStr == freezed ? _value.passStr : passStr as String,
    ));
  }
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
  $PasswordChagedCopyWith<PasswordChaged> get copyWith =>
      _$PasswordChagedCopyWithImpl<PasswordChaged>(this, _$identity);

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
  $PasswordChagedCopyWith<PasswordChaged> get copyWith;
}

abstract class $RegisterWithEmailAndPasswordPressCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressCopyWith(
          RegisterWithEmailAndPasswordPress value,
          $Res Function(RegisterWithEmailAndPasswordPress) then) =
      _$RegisterWithEmailAndPasswordPressCopyWithImpl<$Res>;
}

class _$RegisterWithEmailAndPasswordPressCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressCopyWithImpl(
      RegisterWithEmailAndPasswordPress _value,
      $Res Function(RegisterWithEmailAndPasswordPress) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPress));

  @override
  RegisterWithEmailAndPasswordPress get _value =>
      super._value as RegisterWithEmailAndPasswordPress;
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

abstract class $SignInWithEmailAndPasswordPressCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressCopyWith(
          SignInWithEmailAndPasswordPress value,
          $Res Function(SignInWithEmailAndPasswordPress) then) =
      _$SignInWithEmailAndPasswordPressCopyWithImpl<$Res>;
}

class _$SignInWithEmailAndPasswordPressCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressCopyWithImpl(
      SignInWithEmailAndPasswordPress _value,
      $Res Function(SignInWithEmailAndPasswordPress) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPress));

  @override
  SignInWithEmailAndPasswordPress get _value =>
      super._value as SignInWithEmailAndPasswordPress;
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

abstract class $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleCopyWith(
          SignInWithGoogle value, $Res Function(SignInWithGoogle) then) =
      _$SignInWithGoogleCopyWithImpl<$Res>;
}

class _$SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  _$SignInWithGoogleCopyWithImpl(
      SignInWithGoogle _value, $Res Function(SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as SignInWithGoogle));

  @override
  SignInWithGoogle get _value => super._value as SignInWithGoogle;
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

// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

mixin _$SignInFormState {
  EmailAdress get emailAdress;
  Password get password;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<AuthFailure, Unit>> get authFailureorSuccess;

  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAdress emailAdress,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureorSuccess});
}

class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAdress = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object authFailureorSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      emailAdress: emailAdress == freezed
          ? _value.emailAdress
          : emailAdress as EmailAdress,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      authFailureorSuccess: authFailureorSuccess == freezed
          ? _value.authFailureorSuccess
          : authFailureorSuccess as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAdress emailAdress,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureorSuccess});
}

class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAdress = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object authFailureorSuccess = freezed,
  }) {
    return _then(_SignInFormState(
      emailAdress: emailAdress == freezed
          ? _value.emailAdress
          : emailAdress as EmailAdress,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      authFailureorSuccess: authFailureorSuccess == freezed
          ? _value.authFailureorSuccess
          : authFailureorSuccess as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

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
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
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
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
