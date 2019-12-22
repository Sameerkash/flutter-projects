import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxCallBack(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "this is a task",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(isChecked,checkBoxCallBack),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox(this.checkBox,this.checkBoxState);

  final Function checkBoxState;
  final bool checkBox;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBox,
      activeColor: Colors.lightBlueAccent,
      onChanged: checkBoxState
    );
  }
}
