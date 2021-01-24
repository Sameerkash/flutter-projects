import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
part 'todo.freezed.dart';
part 'todo.g.dart';

Uuid uid = Uuid();

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    final String id,
    final String description,
    @Default(false) final bool completed,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  Map<String, dynamic> toJson() => _$_$_TodoToJson(this);
}
