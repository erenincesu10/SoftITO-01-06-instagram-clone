import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            centerTitle: false,
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            title: const Text(
              "john.doe",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w600),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(65);
}
