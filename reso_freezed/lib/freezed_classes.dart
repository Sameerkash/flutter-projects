import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'freezed_classes.freezed.dart';
part 'freezed_classes.g.dart';

@immutable
abstract class User with _$User {
  const factory User(String name, int age) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@immutable
abstract class OperationNested with _$OperationNested {
  const factory OperationNested.add(int value) = _Add;
  const factory OperationNested.subtratc(int value) = _Subtract;

}
