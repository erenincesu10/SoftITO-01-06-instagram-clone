import 'package:flutter/material.dart';

AppBar ReelsAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent.withOpacity(1),
    centerTitle: false,
    title: Text(
      "Reels",
      style: TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
      )
    ],
  );
}
