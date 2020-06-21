import 'package:flutter_ddd/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encounder a ValueFailure at an Unrecoverble point.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
