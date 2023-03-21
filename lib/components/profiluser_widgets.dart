import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/profile_page/profile_page_highlights.dart';
import 'package:instagram_clone/components/profile_page/profilpage_tab.dart';

class ProfilUserWidget extends StatefulWidget {
  const ProfilUserWidget({super.key});

  @override
  State<ProfilUserWidget> createState() => _ProfilUserWidgetState();
}

class _ProfilUserWidgetState extends State<ProfilUserWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage('https://picsum.photos/500/500?random=${faker.randomGenerator.integer(10)}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                faker.randomGenerator.integer(10,min: 1).toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Gönderiler",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    letterSpacing: 0.4,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: [
                              Text(
                                "709B",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Takipçi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    letterSpacing: 0.4,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Text(
                                  "132",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Takip",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      letterSpacing: 0.4,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  faker.internet.userName(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: 0.4),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Bio",
                  style: TextStyle(letterSpacing: 0.4, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 36,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black),
                          child: Center(
                            child: Text(
                              "Düzenle",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 36,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black),
                          child: Center(
                            child: Text(
                              "Profili Paylaş",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 36,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.person_add,
                          color: Colors.white,
                        ),
                      ),
                      // ProfilePageHighlights()
                    ],
                  ),
                ),
                ProfilePageHighlights(),
                ProfilPageTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
