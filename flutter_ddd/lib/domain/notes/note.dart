import 'package:dartz/dartz.dart';
import 'package:flutter_ddd/domain/core/failures.dart';
import 'package:flutter_ddd/domain/core/value_objects.dart';
import 'package:flutter_ddd/domain/notes/todo_item.dart';
import 'package:flutter_ddd/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const Note._();

  const factory Note({
    @required UniqueId id,
    @required NoteBody body,
    @required NoteColor color,
    @required List3<TodoItem> todos,
  }) = _Note;
  factory Note.empty() => Note(
      body: NoteBody(''),
      id: UniqueId(),
      color: NoteColor(NoteColor.predefinedColors[0]),
      todos: List3(emptyList()));

  Option<ValueFailure<dynamic>> get failureoption {
    return body.failureOrUnit
        .andThen(todos.value)
        .andThen(
          todos
              .getorCrash()
              .map((todoItem) => todoItem.failureOrOption)
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (a) => left(a)),
        )
        .fold((f) => some(f), (_) => none());
  }
}
