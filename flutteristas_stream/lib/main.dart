import 'package:flutter/material.dart';
import 'package:flutteristas_stream/secrets.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

Future<void> main() async {
  final client = StreamChatClient(
    API_KEY,
    logLevel: Level.INFO,
  );

  await client.connectUser(
    User(
      id: 'sam',
      extraData: {
        'image':
            'https://getstream.io/random_png/?id=restless-art-2&amp;name=Restless+art',
      },
    ),
    JWT,
  );

  final channel = client.channel('messaging', id: 'flutter_devs');
  channel.watch();
  runApp(MyApp(client, channel));
}

class MyApp extends StatelessWidget {
  MyApp(this.client, this.channel, {Key key}) : super(key: key);
  // New
  final StreamChatClient client;
  final Channel channel;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) {
        return StreamChat(
          child: widget,
          client: client,
        );
      },
      home: StreamChannel(
        channel: channel,
        child: ChannelPage(), //TODO: Replace with chat list
      ),
    );
  }
}

class ChannelPage extends StatelessWidget {
  const ChannelPage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChannelHeader(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: MessageListView(),
          ),
          MessageInput(),
        ],
      ),
    );
  }
}
