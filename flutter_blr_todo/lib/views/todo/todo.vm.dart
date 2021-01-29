import 'package:flutter_blr_todo/models/todo.dart';
import 'package:flutter_blr_todo/services/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
part 'todo.vm.freezed.dart';

final _sampleTodos = [
  Todo(id: "asa", description: 'Buy Dog food'),
  Todo(id: "asda", description: 'Learn Riverpod'),
];

final completedTodos = Provider<List<Todo>>((ref) {
  final todos = ref.watch(todosProvider.state);

  return todos.where((todo) => todo.completed).toList();
});

final todosProvider = StateNotifierProvider<TodoNotifier>((ref) {
  return TodoNotifier(ref.read, _sampleTodos);
});

class TodoNotifier extends StateNotifier<List<Todo>> {
  TodoNotifier(this.read, [List<Todo> state]) : super(state ?? <Todo>[]) {
    searchState = state;
  }

  var _uuid = Uuid();

  final Reader read;

  var searchState;
  var previousState;

  void add(String description) {
    state = [...state]..add(Todo(id: _uuid.v4(), description: description));

    searchState = state;
  }

  void toggle(String id) {
    state = state.map((todo) {
      if (todo.id == id) {
        return Todo(
          description: todo.description,
          id: todo.id,
          completed: !todo.completed,
        );
      }
      return todo;
    }).toList();

    searchState = state;
  }

  void _cacheState() {
    previousState = state;
  }

  void resetState() {
    if (previousState != null) {
      state = previousState;
      previousState = null;
    }
  }

  void search({String search = ''}) {
    if (search.trim().isNotEmpty) {
      state = state
          .where(
              (t) => t.description.toLowerCase().contains(search.toLowerCase()))
          .toList();
    } else {
      state = searchState;
    }
  }

  void edit({@required String id, @required String description}) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
            description: description,
            id: todo.id,
            completed: todo.completed,
          )
        else
          todo,
    ];
    searchState = state;
  }

  void remove(String id) {
    _cacheState();

    state = state.where((element) => element.id != id).toList();

    searchState = state;
  }
}

///  Complex State Example
///
///

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState.loading() = _Loading;
  const factory TodoState.loaded(List<Todo> todos, List<Todo> comeplted) =
      _Loaded;
  const factory TodoState.empty() = _Error;
}

final repoProvider = Provider<Repository>((ref) {
  return Repository();
});

final todoProvider = StateNotifierProvider<TodoVM>((ref) {
  return TodoVM(ref);
});

class TodoVM extends StateNotifier<TodoState> {
  Repository repo;
  TodoVM(ProviderReference ref)
      : repo = ref.read(repoProvider),
        super(const TodoState.loading()) {
    getTodosFromdb();
  }

  var rand;

  void getTodosFromdb() async {
    final todos = await repo.getTodos();
    if (todos.isEmpty) {
      state = TodoState.empty();
    } else {
      final c = todos.where((t) => t.completed == true).toList();
      state = TodoState.loaded(todos, c);
    }
  }

  void add(String subtitle) {
    var currentState = state;
    if (currentState == TodoState.empty()) {
      currentState = TodoState.loaded([], []);
    }
    if (currentState is _Loaded) {
      //object
      final todo = Todo(id: uid.v4(), description: subtitle);
      //update
      final todos = currentState.todos.toList()..add(todo);
      //Repository
      repo.saveTodo(todo);
      //update state
      state = TodoState.loaded(todos, [...currentState.todos]);
      print(todos);
    }
  }

  // void edit({@required String id, @required String description}) {
  //   state = [
  //     for (final todo in state)
  //       if (todo.id == id)
  //         Todo(
  //           description,
  //           id: todo.id,
  //           completed: todo.completed,
  //         )
  //       else
  //         todo,
  //   ];
  // }

  void toggle(Todo todo) {
    final currentState = state;
    if (currentState is _Loaded) {
      final todos = currentState.todos.map((t) {
        if (t == todo) {
          var to = t.copyWith(
            completed: !t.completed,
          );
          repo.updateTodo(to);
          return to;
        }
        return t;
      }).toList();

      final c = todos..where((t) => t.completed == true);
      state = TodoState.loaded(todos, c);
    }
  }

  void delete(Todo todo) {
    final currentState = state;
    if (currentState is _Loaded) {
      var list = currentState.todos.where((t) => t != todo).toList();
      if (list.isEmpty) {
        state = TodoState.empty();
      } else {
        state = TodoState.loaded(list, [...currentState.todos]);
        repo.deleteTodos(todo);
      }
      // }
    }
  }
}
