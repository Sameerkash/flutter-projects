import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';

var _uuid = Uuid();

/// A read-only description of a todo-item
class Todo {
  Todo({
    this.description,
    this.completed = false,
    String id,
  }) : id = id ?? _uuid.v4();

  final String id;
  final String description;
  final bool completed;

  @override
  String toString() {
    return 'Todo(description: $description, completed: $completed)';
  }
}

/// An object that controls a list of [Todo].
class TodoList extends StateNotifier<List<Todo>> {
  TodoList([List<Todo> initialTodos]) : super(initialTodos ?? []);

  void add(String description) {
    state = [
      ...state,
      Todo(description: description),
    ];
  }

  void toggle(String id) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            id: todo.id,
            completed: !todo.completed,
            description: todo.description,
          )
        else
          todo,
    ];
  }

  void edit({@required String id, @required String description}) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            id: todo.id,
            completed: todo.completed,
            description: description,
          )
        else
          todo,
    ];
  }

  void remove(Todo target) {
    state = state.where((todo) => todo.id != target.id).toList();
  }
}

/// The different ways to filter the list of todos
enum TodoListFilter {
  all,
  active,
  completed,
}

final todoListFilter = StateProvider((_) => TodoListFilter.all);

final todoListSearch = StateProvider((_) => '');

final todoListProvider = StateNotifierProvider<TodoList>((_) {
  return TodoList([
    Todo(id: 'todo-0', description: 'hi'),
    Todo(id: 'todo-1', description: 'hello'),
    Todo(id: 'todo-2', description: 'bonjour'),
  ]);
});

final uncompletedTodosCount = Computed<int>((read) {
  return read(todoListProvider.state).where((todo) => !todo.completed).length;
});

final filterTodos = Computed<List<Todo>>((read) {
  final filter = read(todoListFilter);
  final todos = read(todoListProvider.state);
  final search = read(todoListSearch);
  List<Todo> filteredTodos = [];

  switch (filter.state) {
    case TodoListFilter.completed:
      filteredTodos = todos.where((todo) => todo.completed).toList();
      break;
    case TodoListFilter.active:
      filteredTodos = todos.where((todo) => !todo.completed).toList();
      break;
    case TodoListFilter.all:
      filteredTodos = todos;
      break;
  }

  if (search.state.isEmpty)
    return filteredTodos;
  else {
    return filteredTodos
        .where((todo) => todo.description.contains(search.state))
        .toList();
  }
});
