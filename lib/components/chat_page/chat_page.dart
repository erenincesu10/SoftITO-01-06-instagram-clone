import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/chat_page/chat_screen.dart';
import 'package:instagram_clone/components/chat_page/search_bar.dart';
import 'package:instagram_clone/components/message_page/message_page_appbar.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MessagePageAppBar(),
      body: ListView(children: [
        Container(color: Colors.black, child: SizedBox(height: 20)),
        SearchInput(),
        Container(color: Colors.black, child: SizedBox(height: 20)),
        ChatBlock(),
        ChatBlock(),
        ChatBlock(),
        ChatBlock(),
        ChatBlock(),
        ChatBlock(),
        ChatBlock(),
        ChatBlock(),
        ChatBlock(),
        ChatBlock(),
        ChatBlock(),
      ]),
    );
  }
}
