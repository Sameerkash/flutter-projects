import 'package:dartz/dartz.dart';
import 'package:flutter_ddd/domain/core/failures.dart';
import 'package:flutter_ddd/domain/core/value_objects.dart';
import 'package:flutter_ddd/domain/core/value_validators.dart';

class EmailAdress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAdress(String input) {
    return EmailAdress._(
      validateEmailAdress(input),
    );
  }
  const EmailAdress._(this.value) : assert(value != null);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }
  const Password._(this.value) : assert(value != null);
}
