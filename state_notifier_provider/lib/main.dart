import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier_provider/counter.dart';

import 'package:provider/provider.dart';
import 'package:state_notifier_provider/ilocal_storage.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          Provider<ILocalStorage>(
            create: (_) => FakeLocalStorage(),
          ),
          StateNotifierProvider<Counter, int>(
            create: (_) => Counter(),
          ),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const fabPadding = EdgeInsets.all(5);

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Notifier Demo'),
        ),
        floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: fabPadding,
              child: FloatingActionButton(
                child: Icon(Icons.add),

                ///Increment Counter
                onPressed: () {
                  context.read<Counter>().increment();
                },
              ),
            ),
            Padding(
              padding: fabPadding,
              child: FloatingActionButton(
                  child: Icon(Icons.remove),

                  ///Decrement Counter
                  onPressed: () {
                    context.read<Counter>().decrement();
                  }),
            ),
          ],
        ),
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          context.watch<int>().toString(),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}