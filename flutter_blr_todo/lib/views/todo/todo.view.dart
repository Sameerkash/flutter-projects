import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_blr_todo/models/todo.dart';
import 'package:flutter_blr_todo/views/todo/todo.vm.dart';

final globalScaffoldKey = GlobalKey<ScaffoldState>();

class TodoScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final todos = useProvider(todosProvider.state);
    final compltedTodos = useProvider(completedTodos);
    final ctodo = useProvider(todoProvider.state);
    final search = useTextEditingController();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: globalScaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("TODOS"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                    width: 390,
                    height: 50,
                    child: ListTile(
                      title: TextField(
                        cursorColor: Colors.white,
                        onEditingComplete: () {
                          FocusScope.of(context).unfocus();
                        },
                        controller: search,
                        onChanged: (val) {
                          context.read(todosProvider).search(search: val);
                        },
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            hintText: 'Search...',
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 18),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  TabBar(
                    tabs: [
                      Tab(
                        child: Text("All"),
                      ),
                      Tab(
                        child: Text("Completed"),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body:
         ctodo.map(
          loading: (_) => Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (data) =>
           TabBarView(children: [
            Column(
              children: [
                AddTodoPanel(),
                SizedBox(
                  height: 20,
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    //complex

                    // ...data.todos.map(
                    //   (t) => TodoItem(
                    //     todo: t,
                    //   ),
                    // )

                    /// Simple
                    ...todos.map(
                      (t) => TodoItem(
                        todo: t,
                      ),
                    )
                  ],
                )
              ],
            ),
            ListView(
              children: [
                /// Complex
                // ...data.comeplted.map(
                //   (t) => TodoItem(
                //     todo: t,
                //   ),
                // )

                /// Simple
                ...compltedTodos.map(
                  (t) => TodoItem(
                    todo: t,
                  ),
                )
              ],
            ),
          ]),
          empty: (_) => AddTodoPanel(),
        ),
      ),
    );
  }
}

class TodoItem extends HookWidget {
  final Todo todo;
  final GlobalKey<ScaffoldState> scaff;
  const TodoItem({
    key,
    this.todo,
    this.scaff,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var focus = useFocusNode();
    var txt = useTextEditingController();
    var hasFocus = useState(false);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Dismissible(
        key: UniqueKey(),
        background: Container(color: Colors.red),
        onDismissed: (_) {
          // Method 3
          context.read(todosProvider).remove(todo.id);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                key: key,
                duration: Duration(seconds: 2),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Todo Delted"),
                    FlatButton(
                        color: Colors.grey,
                        onPressed: () {
                          globalScaffoldKey.currentContext
                              .read(todosProvider)
                              .resetState();
                        },
                        child: Text("Undo"))
                  ],
                )),
          );
        },
        child: FocusScope(
          child: Focus(
            onFocusChange: (isFocused) {
              if (!isFocused) {
                hasFocus.value = false;
                context
                    .read(todosProvider)
                    .edit(id: todo.id, description: txt.text);
              } else {
                txt.text = todo.description;
                txt.selection = TextSelection.fromPosition(
                    TextPosition(offset: txt.text.length));
              }
            },
            child: ListTile(
              onTap: () {
                hasFocus.value = true;

                focus.requestFocus();
              },
              title: hasFocus.value
                  ? TextField(
                      focusNode: focus,
                      controller: txt,
                    )
                  : Text(todo.description),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: todo.completed,
                    onChanged: (_) {
                      ///complex
                      context.read(todoProvider).toggle(todo);

                      ///
                      context.read(todosProvider).toggle(todo.id);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      context.read(todosProvider).remove(todo.id);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            key: key,
                            duration: Duration(seconds: 2),
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Todo Delted"),
                                FlatButton(
                                    color: Colors.grey,
                                    onPressed: () {
                                      globalScaffoldKey.currentContext
                                          .read(todosProvider)
                                          .resetState();
                                    },
                                    child: Text("Undo"))
                              ],
                            )),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AddTodoPanel extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var txt = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: txt,
              decoration: InputDecoration(hintText: 'New todo'),
              onSubmitted: (t) {
                /// complex
                context.read(todoProvider).add(t);

                ///
                context.read(todosProvider).add(t);
                txt.clear();
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              ///complex
              context.read(todosProvider).add(txt.value.text);

              ///
              context.read(todoProvider).add(txt.value.text);
            },
          ),
        ],
      ),
    );
  }
}
