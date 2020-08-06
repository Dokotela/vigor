import 'package:vigor/models/failures.dart';

class UnexpectedValueError extends Error {
  UnexpectedValueError(this.valueFailure);

  final ValueFailure valueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
