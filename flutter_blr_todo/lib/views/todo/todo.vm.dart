import 'package:flutter_blr_todo/models/todo.dart';
import 'package:flutter_blr_todo/services/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
part 'todo.vm.freezed.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState.loading() = _Loading;
  const factory TodoState.loaded(List<Todo> todos) = _Loaded;
  const factory TodoState.empty() = _Error;
}

final repoProvider = Provider<Repository>((ref) {
  return Repository();
});

// final todoProvider = Provider<TodoVM>((ref) {
//   return TodoVM(ref);
// });

var _uuid = Uuid();

final _sampleTodos = [
  Todo(id: "asdada", description: 'Buy cat food'),
  Todo(id: "klfmljs", description: 'Learn Riverpod'),
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
    to.addAll(state);
  }

  final Reader read;
  List<Todo> to = [];

  void add(String description) {
    state = [...state]..add(Todo(id: _uuid.v4(), description: description));

    to.clear();
    to.addAll(state);
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

    to.clear();
    to.addAll(state);
  }

  var previousState;

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
      state = [...to];
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
    to.clear();
    to.addAll(state);
  }

  void remove(String id) {
    _cacheState();

    state = state.where((element) => element.id != id).toList();
    to.clear();
    to.addAll(state);
  }
}

// class TodoVM extends StateNotifier<TodoState> {
//   Repository repo;
//   TodoVM(ProviderReference ref)
//       : repo = ref.read(repoProvider),
//         super(const TodoState.loading());

//   var rand;

//   void getTodosFromdb() async {
//     final todos = await repo.getTodos();
//     if (todos.isEmpty) {
//       state = TodoState.empty();
//     } else {
//       state = TodoState.loaded(todos);
//     }
//   }

//   void add(String title, String subtitle) {
//     var currentState = state;
//     if (currentState == TodoState.empty()) {
//       currentState = TodoState.empty();
//     }
//     if (currentState is _Loaded) {
//       //object
//       final todo = Todo(id: uid.v4(), description: subtitle);
//       //update
//       final todos = currentState.todos.toList()..add(todo);
//       //Repository
//       repo.saveTodo(todo);
//       //update state
//       state = TodoState.loaded(
//         todos,
//       );
//     }
//   }

//   // void edit({@required String id, @required String description}) {
//   //   state = [
//   //     for (final todo in state)
//   //       if (todo.id == id)
//   //         Todo(
//   //           description,
//   //           id: todo.id,
//   //           completed: todo.completed,
//   //         )
//   //       else
//   //         todo,
//   //   ];
//   // }

//   void toggle(Todo todo) {
//     final currentState = state;
//     if (currentState is _Loaded) {
//       final todos = currentState.todos.map((t) {
//         if (t == todo) {
//           var to = t.copyWith(
//             completed: !t.completed,
//           );
//           repo.updateTodo(to);
//           return to;
//         }
//         return t;
//       }).toList();

//       state = TodoState.loaded(
//         todos,
//       );
//     }
//   }

//   void delete(Todo todo) {
//     final currentState = state;
//     if (currentState is _Loaded) {
//       var list = currentState.todos.where((t) => t != todo).toList();
//       if (list.isEmpty) {
//         state = TodoState.empty();
//       } else {
//         state = TodoState.loaded(list);
//         repo.deleteTodos(todo);
//       }
//       // }
//     }
//   }
// }
