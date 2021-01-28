import 'dart:convert';
import 'dart:developer';

import 'package:flutter_command/flutter_command.dart';

import '../models/common.dart';
import '../service/repo.dart';

class HomeVM {
  final Service api = Service.singleton;

  Command<void, List<Story>> storiesCommand;
  Command<Story, List<Comment>> commentsCommand;

  HomeVM({Story story}) {
    storiesCommand = Command.createAsyncNoParam<List<Story>>(topStories, []);
    storiesCommand.execute();

    commentsCommand =
        Command.createAsync<Story, List<Comment>>(getComments, []);
    commentsCommand.execute(story);
    storiesCommand.thrownExceptions.listen((e, _) => print(e.toString()));
  }

  Future<List<Story>> topStories() async {
    final res = await api.getTopStories();
    final stories = res.map((response) {
      final json = jsonDecode(response.body);
      return Story.fromJSON(json);
    }).toList();

    return stories;
  }

  Future<List<Comment>> getComments(Story story) async {
    final res = await api.getCommentsByStory(story);
    final comments = res.map((response) {
      final json = jsonDecode(response.body);
      return Comment.fromJSON(json);
    }).toList();
    return comments;
  }
}
