// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

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

const $AuthFailure = _$AuthFailureTearOff();

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
