import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy eggs'),
    Task(name: "buy pens"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_task);
  }

  void update(String name) {
    _task.add(Task(name: name));
    print("added");
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void delteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}
