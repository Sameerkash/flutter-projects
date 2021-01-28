import 'package:html/parser.dart';

class Comment {
  final String text;
  final int commentId;
  Story story;
  Comment({this.commentId, this.text});

  factory Comment.fromJSON(Map<String, dynamic> json) {
    final text =
        parse(json['text'] != null ? json['text'] : "").documentElement.text;
    return Comment(commentId: json["id"], text: text);
  }
}

class Story {
  final String title;
  final String url;
  List<int> commentIds = [];

  Story({this.title, this.url, this.commentIds});

  factory Story.fromJSON(Map<String, dynamic> json) {
    return Story(
        title: json["title"],
        url: json["url"],
        commentIds: json["kids"] == null ? [] : json["kids"].cast<int>());
  }
}
