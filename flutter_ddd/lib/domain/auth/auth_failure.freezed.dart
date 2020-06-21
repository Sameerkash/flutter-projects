// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  ServerError serverError() {
    return const ServerError();
  }

  EmailAlreadyInUSe emailAlreadyInUSe() {
    return const EmailAlreadyInUSe();
  }

  InvalidEmailAndPasswordComnbination invalidEmailAndPasswordComnbination() {
    return const InvalidEmailAndPasswordComnbination();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUSe(),
    @required Result invalidEmailAndPasswordComnbination(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUSe(),
    Result invalidEmailAndPasswordComnbination(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUSe(EmailAlreadyInUSe value),
    @required
        Result invalidEmailAndPasswordComnbination(
            InvalidEmailAndPasswordComnbination value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUSe(EmailAlreadyInUSe value),
    Result invalidEmailAndPasswordComnbination(
        InvalidEmailAndPasswordComnbination value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUSe(),
    @required Result invalidEmailAndPasswordComnbination(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUSe != null);
    assert(invalidEmailAndPasswordComnbination != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUSe(),
    Result invalidEmailAndPasswordComnbination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUSe(EmailAlreadyInUSe value),
    @required
        Result invalidEmailAndPasswordComnbination(
            InvalidEmailAndPasswordComnbination value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUSe != null);
    assert(invalidEmailAndPasswordComnbination != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUSe(EmailAlreadyInUSe value),
    Result invalidEmailAndPasswordComnbination(
        InvalidEmailAndPasswordComnbination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUSe(),
    @required Result invalidEmailAndPasswordComnbination(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUSe != null);
    assert(invalidEmailAndPasswordComnbination != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUSe(),
    Result invalidEmailAndPasswordComnbination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUSe(EmailAlreadyInUSe value),
    @required
        Result invalidEmailAndPasswordComnbination(
            InvalidEmailAndPasswordComnbination value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUSe != null);
    assert(invalidEmailAndPasswordComnbination != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUSe(EmailAlreadyInUSe value),
    Result invalidEmailAndPasswordComnbination(
        InvalidEmailAndPasswordComnbination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $EmailAlreadyInUSeCopyWith<$Res> {
  factory $EmailAlreadyInUSeCopyWith(
          EmailAlreadyInUSe value, $Res Function(EmailAlreadyInUSe) then) =
      _$EmailAlreadyInUSeCopyWithImpl<$Res>;
}

class _$EmailAlreadyInUSeCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUSeCopyWith<$Res> {
  _$EmailAlreadyInUSeCopyWithImpl(
      EmailAlreadyInUSe _value, $Res Function(EmailAlreadyInUSe) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUSe));

  @override
  EmailAlreadyInUSe get _value => super._value as EmailAlreadyInUSe;
}

class _$EmailAlreadyInUSe implements EmailAlreadyInUSe {
  const _$EmailAlreadyInUSe();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUSe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUSe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUSe(),
    @required Result invalidEmailAndPasswordComnbination(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUSe != null);
    assert(invalidEmailAndPasswordComnbination != null);
    return emailAlreadyInUSe();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUSe(),
    Result invalidEmailAndPasswordComnbination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUSe != null) {
      return emailAlreadyInUSe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUSe(EmailAlreadyInUSe value),
    @required
        Result invalidEmailAndPasswordComnbination(
            InvalidEmailAndPasswordComnbination value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUSe != null);
    assert(invalidEmailAndPasswordComnbination != null);
    return emailAlreadyInUSe(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUSe(EmailAlreadyInUSe value),
    Result invalidEmailAndPasswordComnbination(
        InvalidEmailAndPasswordComnbination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUSe != null) {
      return emailAlreadyInUSe(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUSe implements AuthFailure {
  const factory EmailAlreadyInUSe() = _$EmailAlreadyInUSe;
}

abstract class $InvalidEmailAndPasswordComnbinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordComnbinationCopyWith(
          InvalidEmailAndPasswordComnbination value,
          $Res Function(InvalidEmailAndPasswordComnbination) then) =
      _$InvalidEmailAndPasswordComnbinationCopyWithImpl<$Res>;
}

class _$InvalidEmailAndPasswordComnbinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordComnbinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordComnbinationCopyWithImpl(
      InvalidEmailAndPasswordComnbination _value,
      $Res Function(InvalidEmailAndPasswordComnbination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordComnbination));

  @override
  InvalidEmailAndPasswordComnbination get _value =>
      super._value as InvalidEmailAndPasswordComnbination;
}

class _$InvalidEmailAndPasswordComnbination
    implements InvalidEmailAndPasswordComnbination {
  const _$InvalidEmailAndPasswordComnbination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordComnbination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordComnbination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUSe(),
    @required Result invalidEmailAndPasswordComnbination(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUSe != null);
    assert(invalidEmailAndPasswordComnbination != null);
    return invalidEmailAndPasswordComnbination();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result emailAlreadyInUSe(),
    Result invalidEmailAndPasswordComnbination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordComnbination != null) {
      return invalidEmailAndPasswordComnbination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUSe(EmailAlreadyInUSe value),
    @required
        Result invalidEmailAndPasswordComnbination(
            InvalidEmailAndPasswordComnbination value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUSe != null);
    assert(invalidEmailAndPasswordComnbination != null);
    return invalidEmailAndPasswordComnbination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUSe(EmailAlreadyInUSe value),
    Result invalidEmailAndPasswordComnbination(
        InvalidEmailAndPasswordComnbination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordComnbination != null) {
      return invalidEmailAndPasswordComnbination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordComnbination implements AuthFailure {
  const factory InvalidEmailAndPasswordComnbination() =
      _$InvalidEmailAndPasswordComnbination;
}
