import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TimeLinePost extends StatelessWidget {
  const TimeLinePost({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/236x/ec/8e/99/ec8e9986006b2b803e3b23f7f17d94af.jpg"))),
                ),
                title: const Text("Şehinşah",
                    style: TextStyle(color: Colors.white)),
                subtitle: const Text(
                  "Kadıköy",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/sehinsah.jpeg'))),
              ),
              ListTile(
                leading: Flexible(
                    child: Wrap(
                  children: const [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.white,
                      weight: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_outward_outlined,
                      color: Colors.white,
                      size: 25,
                    )
                  ],
                )),
                trailing: const Icon(
                  Icons.bookmark_outline_rounded,
                  color: Colors.white,
                ),
              ),
              Row(children: const [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    "1000 kişi beğendi",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 18, top: 4),
                    child: Text(
                      "Şehinşah  naber",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }
}
