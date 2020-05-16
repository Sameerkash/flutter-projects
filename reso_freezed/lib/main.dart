import 'package:reso_freezed/freezed_classes.dart';

void main() {
  // final user = User('Sam', 20);

  // final serialziedd = user.toJson();
  // final deseralized = User.fromJson(serialziedd);

  final result = performOperation(2, OperationNested.add(2));
  print(result);
}

int performOperation(int operand, OperationNested operation) {
  return operation.when(
      add: (value) => operand + value, subtratc: (value) => operand - value);
}
