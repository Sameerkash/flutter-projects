import 'package:flutter_ddd/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueError(this.valueFailure);

  String toString() {
    const explanation = 'Encounder a CalueFailure at an Unrecoverble point.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}