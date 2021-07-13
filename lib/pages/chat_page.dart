import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChatPage extends StatelessWidget {
  static const routeName = "chat_page";

  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChannelHeader(),
      body: Column(children: [
        Expanded(
          child: MessageListView(),
        ),
        MessageInput()
      ]),
    );
  }
}
