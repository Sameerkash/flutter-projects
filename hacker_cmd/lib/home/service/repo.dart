import 'dart:convert';

import 'package:hacker_cmd/models/common.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


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
  Future<Response> _getStory(int storyId) {
    return http.get(UrlHelper.urlForStory(storyId));
  }

  Future<List<Response>> _getCommentsByStory(Story story) async {
    try {
      return Future.wait(story.commentIds.map((commentId) {
        return http.get(UrlHelper.urlForCommentById(commentId));
      }));
    } catch (e) {
      print('soemthing went wrong');
      return [];
    }
  }

  Future<List<Response>> _getTopStories() async {
    try {
      final response = await http.get(UrlHelper.urlForTopStories());
      if (response.statusCode == 200) {
        Iterable storyIds = jsonDecode(response.body);
        return Future.wait(storyIds.take(20).map((storyId) {
          return _getStory(storyId);
        }));
      } else {
        return [];
      }
    } catch (e) {
      print("Somehting went wrong");
      return [];
    }
  }

  Future<List<Comment>> getComments(Story story) async {
    final res = await _getCommentsByStory(story);
    final comments = res.map((response) {
      final json = jsonDecode(response.body);
      return Comment.fromJSON(json);
    }).toList();
    return comments;
  }

  Future<List<Story>> getStories() async {
    final res = await _getTopStories();

    final stories = res.map((response) {
      final json = jsonDecode(response.body);
      return Story.fromJSON(json);
    }).toList();

    return stories;
  }
}
