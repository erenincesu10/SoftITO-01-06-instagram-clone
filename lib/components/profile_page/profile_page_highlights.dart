import 'package:flutter/material.dart';

class ProfilePageHighlights extends StatefulWidget {
  const ProfilePageHighlights({super.key});

  @override
  State<ProfilePageHighlights> createState() => _ProfilePageHighlightsState();
}

class _ProfilePageHighlightsState extends State<ProfilePageHighlights> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HighlightUser(),
                HighlightUser(),
                HighlightUser(),
                HighlightUser(),
                HighlightAdd(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget HighlightAdd() {
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        child: Center(
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                  fixedSize: Size(55, 55)),
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              )),
        ),
      ),
      Text(
        "Yeni",
        style: TextStyle(),
      )
    ],
  );
}

Widget HighlightUser() {
  return Column(
    children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration:
                BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          ),
          CircleAvatar(
            radius: 28,
            foregroundImage: AssetImage("assets/sehinsah.jpeg"),
          )
        ],
      ),
      SizedBox(
        height: 3,
      ),
      Text(
        "Me",
        style: TextStyle(color: Colors.black),
      )
    ],
  );
}
