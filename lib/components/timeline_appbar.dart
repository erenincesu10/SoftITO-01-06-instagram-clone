import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'custom_icon_button.dart';

class TimelineAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TimelineAppbar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(65);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Image.asset(
          "assets/instagram.png",
          height: 30,
          fit: BoxFit.fitHeight,
        ),
      ),
      actions: [
        CustomIconButton(
          icon: "assets/icons/story.png",
          onPressed: () {},
        ),
        CustomIconButton(
          icon: "assets/icons/message.png",
          onPressed: () {},
        ),
      ],
    );
  }
}
