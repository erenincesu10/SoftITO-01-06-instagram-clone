import 'package:flutter/material.dart';

class ChatBlock extends StatefulWidget {
  const ChatBlock({super.key});

  @override
  State<ChatBlock> createState() => _ChatBlockState();
}

class _ChatBlockState extends State<ChatBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: const ListTile(
        title: Text(
          "Username",
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
        ),
        subtitle: Text(
          "Active 13m ago",
          style: TextStyle(color: Colors.white54),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://www.clipartmax.com/png/middle/257-2572603_user-man-social-avatar-profile-icon-man-avatar-in-circle.png"),
          radius: 30,
        ),
        trailing: Icon(
          Icons.camera_alt,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
