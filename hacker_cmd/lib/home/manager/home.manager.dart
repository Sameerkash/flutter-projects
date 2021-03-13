import 'dart:developer';

import 'package:flutter_command/flutter_command.dart';
import 'package:hacker_cmd/home/service/locator.dart';
import 'package:hacker_cmd/models/common.dart';
import '../service/repo.dart';

class HomeManager {
  final api = getIt.get<Service>();

  Command<void, List<Story>> storiesCommand;
  Command<Story, List<Comment>> commentsCommand;

  HomeManager() {
    storiesCommand = Command.createAsyncNoParam<List<Story>>(topStories, []);
    storiesCommand();

    commentsCommand =
        Command.createAsync<Story, List<Comment>>(getComments, []);

    storiesCommand.thrownExceptions.listen((e, _) => print(e.toString()));
    commentsCommand.thrownExceptions.listen((e, _) => print(e.toString()));
  }

  void fetchComments(Story story) {
    commentsCommand.execute(story);
  }

  Future<List<Story>> topStories() async {
    final res = await api.getStories();
    return res;
  }

  Future<List<Comment>> getComments(Story story) async {
    final res = await api.getComments(story);
    return res;
  }
}
