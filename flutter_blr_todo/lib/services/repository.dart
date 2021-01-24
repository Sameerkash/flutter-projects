
import 'package:flutter_blr_todo/models/todo.dart';
import 'package:path_provider/path_provider.dart';

import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class Repository{


 String dbName = 'todos.db';
  DatabaseFactory dbFactory = databaseFactoryIo;
  Database _db;

  Future<Database> getDb() async {
    if (_db == null) {
      var path = (await getApplicationSupportDirectory()).path + "/" + dbName;
      _db = await dbFactory.openDatabase(path);
    }
    return _db;
  }

  final _todosStore = intMapStoreFactory.store("common_store");
  final keyValue = StoreRef<String, dynamic>.main();



  Future<void> saveTodo(Todo todo) async {
    try {
      await _todosStore.add(await getDb(), todo.toJson());
    } catch (e) {
      print("$e");
    }
  }

  Future<void> updateTodo(Todo todo) async {
    try {
      final finder = Finder(filter: Filter.equals('id', todo.id));

      await _todosStore.update(await getDb(), todo.toJson(), finder: finder);
    } catch (e) {
      print("$e");
    }
  }

  Future<List<Todo>> getTodos() async {
    final recordSnapshots = await _todosStore.find(await getDb());

    List<Todo> _todos = [];
    recordSnapshots.forEach((todo) {
      Todo todoitem = Todo.fromJson(todo.value);
      _todos.add(todoitem);
    });
    return _todos;
  }

  Future<void> deleteTodos(Todo todo) async {
    final finder = Finder(filter: Filter.equals('id', todo.id));
    await _todosStore.delete(await getDb(), finder: finder);
  }




}