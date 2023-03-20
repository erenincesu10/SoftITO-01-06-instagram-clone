import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/components/profile_page/profile_page_highlights.dart';
import 'package:instagram_clone/components/profile_page/profilpage_tab.dart';
import 'package:instagram_clone/main.dart';

import 'explore_page/discovery_gridview.dart';

// ignore: camel_case_types
class myBottomNavBar extends StatefulWidget {
  const myBottomNavBar({super.key});

  @override
  State<myBottomNavBar> createState() => _myBottomNavBarState();
}

// ignore: camel_case_types
class _myBottomNavBarState extends State<myBottomNavBar> {
  int _selectedIndex = 0;

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  XFile? image;

  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    setState(() {
      image = img;
    });
  }

  void Alert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text("Fotoğraf Seçiniz Lütfen"),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        getImage(ImageSource.gallery);
                      },
                      child: Row(
                        children: [Icon(Icons.image), Text("From Gallery")],
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [Icon(Icons.camera), Text("from Camera")],
                      ))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(Icons.home_filled),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GridDiscovery(),
                      ),
                    ),
                  }),
          label: "",
          activeIcon: const Icon(CupertinoIcons.search),
        ),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.add_box_outlined),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
                getImage(ImageSource.gallery);
                image != null
                    ? Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            File(image!.path),
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: 300,
                          ),
                        ),
                      )
                    : Text(
                        "No Image",
                        style: TextStyle(fontSize: 20),
                      );
                //test code for button works
              },
            ),
            label: ""),
        const BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_outlined),
            label: "",
            activeIcon: Icon(Icons.movie_filter)),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.account_circle_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilePageHighlights()));
              },
            ),
            label: "",
            activeIcon: const Icon(Icons.account_circle))
      ],
    );
  }
}
