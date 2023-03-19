import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      pinned: true,
      centerTitle: false,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(3.0),
            child: Icon(
              Icons.https_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 18,
            ),
          ),
          Text(
            "stackedList",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: const Icon(
            Icons.add_box_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(
            Icons.dehaze_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ],
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }
}
