import 'package:flutter/material.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (_)=> TaskData(),
          child: MaterialApp(
        home: TaskScreen(),
      ),
    ); 
  }
}
