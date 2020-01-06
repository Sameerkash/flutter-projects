import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy eggs'),
    Task(name: "buy pens"),
  ];

  void update(String name) {
    tasks.add(Task(name: name));
    print("added");
    notifyListeners();
  }
}
