import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../models/common.dart';

class UrlHelper {
  static String urlForStory(int storyId) {
    return "https://hacker-news.firebaseio.com/v0/item/$storyId.json?print=pretty";
  }

  static String urlForTopStories() {
    return "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty";
  }

  static String urlForCommentById(int commentId) {
    return "https://hacker-news.firebaseio.com/v0/item/$commentId.json?print=pretty";
  }
}

class Service {
  Service._();

  static final Service _singleton = Service._();

  static get singleton => _singleton;

  Future<Response> _getStory(int storyId) {
    return http.get(UrlHelper.urlForStory(storyId));
  }

  Future<List<Response>> getCommentsByStory(Story story) async {
    return Future.wait(story.commentIds.map((commentId) {
      return http.get(UrlHelper.urlForCommentById(commentId));
    }));
  }

  Future<List<Response>> getTopStories() async {
    final response = await http.get(UrlHelper.urlForTopStories());
    if (response.statusCode == 200) {
      Iterable storyIds = jsonDecode(response.body);
      return Future.wait(storyIds.take(10).map((storyId) {
        return _getStory(storyId);
      }));
    } else {
      throw Exception("Unable to fetch data!");
    }
  }
}
