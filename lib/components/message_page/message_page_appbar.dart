import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget messagePageAppBar() {
  return AppBar(
    leadingWidth: 25,
    backgroundColor: Colors.black,
    centerTitle: false,
    title: DropdownButton(
        underline: Container(),
        iconDisabledColor: Colors.white,
        icon: Icon(
          CupertinoIcons.chevron_down,
          size: 20,
        ),
        items: [
          DropdownMenuItem(
              child: Text(
            "Username",
            style: TextStyle(color: Colors.white),
          ))
        ],
        onChanged: null),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.video_camera,
            size: 30,
          )),
      IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.square_pencil,
            size: 26,
          ))
    ],
  );
}
