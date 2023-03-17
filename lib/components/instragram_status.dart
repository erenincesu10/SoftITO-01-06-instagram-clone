import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/timeline_appbar.dart';
import 'package:instagram_clone/components/timeline_post.dart';

class MessagePageStatus extends StatefulWidget {
  const MessagePageStatus({super.key});

  @override
  State<MessagePageStatus> createState() => _MessagePageStatusState();
}

class _MessagePageStatusState extends State<MessagePageStatus> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 100,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(15, (index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, gradient: LinearGradient(
                            //begin: Alignment.topCenter,
                            //end: Alignment.bottomCenter,
                            colors: [Color(0xFF9B2282), Color(0xFFEEA863)])),
                    child: Container(
                      width: 100,
                      height: 100,
                      //padding: EdgeInsets.all(),
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                        )
                      ]),
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  scale: 20,
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://cdns-images.dzcdn.net/images/artist/39b2e6d49de9a33fbc6ba6f2f87a59ff/264x264.jpg")),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "kaan",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            );
          }),
        ),
      ),

      // Divider(
      //   color: Colors.grey,
      // ),
      // Expanded(child: TimeLinePost())
    ]);
  }
}
