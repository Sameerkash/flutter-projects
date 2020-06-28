import 'package:flutter_ddd/domain/core/value_objects.dart';
import 'package:flutter_ddd/domain/notes/todo_item.dart';
import 'package:flutter_ddd/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_dto.freezed.dart';

part 'note_dto.g.dart';

@freezed
abstract class TodoItemDto with _$TodoItemDto {
  const factory TodoItemDto({
    @required String id,
    @required String name,
    @required bool done,
  }) = _TodoItemDto;

  factory TodoItemDto.fromDomain(TodoItem todoItem) {
    return TodoItemDto(
      id: todoItem.id.getorCrash(),
      name: todoItem.name.getorCrash(),
      done: todoItem.done,
    );
  }

  TodoItem toDomain() {
    return TodoItem(
      id: UniqueId.fromUniqueString(id),
      name: TodoName(name),
      done: done,
    );
  }

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDtoFromJson(json);
}
