import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 16),
            tabs: [
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [Chats(), Numbers(), Container()]),
      ),
    );
  }
}

class Numbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getFact(25),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) return Text("Error");
        final json = jsonDecode(snapshot.data);
        return Container(
          child: Center(
            child: Text(
              json["title"],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}

Future<String> getFact(int number) async {
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");
  final resposne = await http.get(uri);
  return resposne.body;
}

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (_) => ChatView()));
          },
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            backgroundImage: AssetImage('assets/p.jpeg'),
          ),
          title: Text(
            "John Doe",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "last message",
            style: TextStyle(fontSize: 16),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("4:10 pm"),
              CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 13,
                child: Text("2"),
              )
            ],
          ),
        );
      },
    );
  }
}

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue,
          backgroundImage: AssetImage('assets/p.jpeg'),
        ),
        title: Text(
          "John Doe",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.video_call),
          Icon(Icons.call),
          Icon(Icons.more_horiz)
        ],
      ),
      body: TextField(),
    );
  }
}
