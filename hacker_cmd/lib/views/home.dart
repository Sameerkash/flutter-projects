import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_command/command_builder.dart';

import 'package:hacker_cmd/models/common.dart';
import 'package:hacker_cmd/service/locator.dart';
import 'package:hacker_cmd/views/home.vm.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hacker News"),
        backgroundColor: Colors.deepPurple,
      ),
      body: CommandBuilder(
        command: getIt.get<HomeVM>().storiesCommand,
        whileExecuting: (context, comments, _) => Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(),
          ),
        ),
        onError: (context, error, category, _) => Column(
          children: [
            Text('An Error occurred!'),
            Text(error.toString()),
          ],
        ),
        onData: (context, stories, _) => ListView.builder(
          itemCount: stories.length,
          itemBuilder: (_, index) {
            return ListTile(
              onTap: () {
                getIt.get<HomeVM>().fetchComments(stories[index]);
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (c) => CommentsView(
                      story: stories[index],
                    ),
                  ),
                );
              },
              title: Text(stories[index].title, style: TextStyle(fontSize: 18)),
              trailing: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      // "Hello",
                      "${stories[index].commentIds.length}",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            );
          },
        ),
      ),
    );
  }
}

class CommentsView extends StatelessWidget {
  final Story story;
  CommentsView({
    Key key,
    this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(this.story.title), backgroundColor: Colors.orange),
        body: CommandBuilder(
          command: getIt.get<HomeVM>().commentsCommand,
          whileExecuting: (context, comments, _) => Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(),
            ),
          ),
          onError: (context, error, category, _) => Column(
            children: [
              Text('An Error occurred!'),
              Text(error.toString()),
            ],
          ),
          onData: (context, comments, _) => ListView.builder(
            itemCount: comments.length,
            // this.comments.length,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: Container(
                      alignment: Alignment.center,
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text("${1 + index}",
                          style: TextStyle(fontSize: 22, color: Colors.white))),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                        // "",
                        comments[index].text,
                        style: TextStyle(fontSize: 18)),
                  ));
            },
          ),
        ));
  }
}
