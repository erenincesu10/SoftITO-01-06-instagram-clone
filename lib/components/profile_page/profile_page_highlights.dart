import 'package:flutter/material.dart';
import 'package:instagram_clone/components/bottomNavBarPage.dart';
import 'package:instagram_clone/components/profile_page/profile_appbar.dart';

class ProfilePageHighlights extends StatefulWidget {
  const ProfilePageHighlights({super.key});

  @override
  State<ProfilePageHighlights> createState() => _ProfilePageHighlightsState();
}

class _ProfilePageHighlightsState extends State<ProfilePageHighlights> {
  @override
  // final width = MediaQuery.of(context).size.width;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            HighlightUser(),
            HighlightUser(),
            HighlightUser(),
            HighlightUser(),
            HighlightUser(),
            HighlightAdd(),
          ],
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
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        child: Center(
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: CircleBorder(),
                  fixedSize: Size(55, 55)),
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              )),
        ),
      ),
      const Text(
        "Yeni",
        style: TextStyle(),
      )
    ],
  );
}

Widget HighlightUser() {
  return SafeArea(
    child: Container(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
              ),
              const CircleAvatar(
                radius: 28,
                foregroundImage: AssetImage("assets/sehinsah.jpeg"),
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          const Text(
            "Me",
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    ),
  );
}
