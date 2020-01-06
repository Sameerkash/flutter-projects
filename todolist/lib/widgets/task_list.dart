import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task.dart';
import 'package:todolist/models/task_data.dart';
import './task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tasks = Provider.of<TaskData>(context);

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks.tasks[index].name,
            isChecked: tasks.tasks[index].isDone,
            checkBoxCallback: (checkBox) {


            });
      },
      itemCount: tasks.tasks.length,
    );
  }
}
