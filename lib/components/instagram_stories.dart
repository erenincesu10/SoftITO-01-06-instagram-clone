import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/bottomNavBarPage.dart';
import 'package:instagram_clone/components/timeline_appbar.dart';
import 'package:instagram_clone/components/timeline_post.dart';

class StoriesInstagram extends StatelessWidget {
  const StoriesInstagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: TimelineAppbar(),
      bottomNavigationBar: myBottomNavBar(),
      body: Column(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(15, (index) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF9B2282), Color(0xFFEEA863)])),
                      child: Container(
                        width: 60,
                        height: 60,
                        padding: const EdgeInsets.all(1),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(color: Colors.black, spreadRadius: 1)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),

                          //FOTOĞRAF

                          child: Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Column(
                              children: [
                                Container(
                                  width: 65,
                                  height: 65,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://i.pinimg.com/236x/ec/8e/99/ec8e9986006b2b803e3b23f7f17d94af.jpg")),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "kaan",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              );
            }),
          ),
        ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: List.generate(15, (index) {
        //         return Padding(
        //           padding: const EdgeInsets.only(left: 20, right: 18),
        //           child: Text(
        //             "YAZMA",
        //             style: TextStyle(color: Colors.white),
        //           ),
        //         );
        //       })),
        // ),
        const Divider(
          color: Colors.grey,
        ),
        const Expanded(child: TimeLinePost())
      ]),
    );
  }
}
