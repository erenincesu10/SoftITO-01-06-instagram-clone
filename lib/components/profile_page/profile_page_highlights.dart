import 'package:faker/faker.dart';
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
    return Container(
      height: 120,
      child: 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: ((context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HighlightUser(index),
                );
              }),
            ),
          ),
    );
  }
}

Widget HighlightAdd() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
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
      ],
    ),
  );
}

Widget HighlightUser(int index) {
  return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
              color: Colors.grey, shape: BoxShape.circle),
         child : Padding(
           padding: const EdgeInsets.all(2.0),
           child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage('https://picsum.photos/500/500?random=$index'))
            ),
                   ),
         ),),
        Text(
          faker.randomGenerator.string(5),
          style: TextStyle(color: Colors.grey),
        )
      ],
  );
}
