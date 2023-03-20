import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/components/profile_page/profile_page_highlights.dart';
import 'package:instagram_clone/components/profile_page/profilpage_tab.dart';
import 'package:instagram_clone/main.dart';
import 'package:instagram_clone/view_models/navigator_view_model.dart';
import 'package:provider/provider.dart';

import 'explore_page/discovery_gridview.dart';

// ignore: camel_case_types
class myBottomNavBar extends StatefulWidget {
  const myBottomNavBar({super.key});

  @override
  State<myBottomNavBar> createState() => _myBottomNavBarState();
}

// ignore: camel_case_types
class _myBottomNavBarState extends State<myBottomNavBar> {
  // void _onTapped(int index,BuildContext context) {
  //   setState(() {
  //     _selectedIndex = index;
  //     context.read<NavigatorViewModel>().setIndex(index);
  //     print(_selectedIndex);
  //   });
  // }

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
      currentIndex: context.watch<NavigatorViewModel>().getCurrentIndex,
      onTap: (int index) {
        if (index == 2) {
          Alert();
        } else {
          context.read<NavigatorViewModel>().setIndex(index);
        }
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "",
            activeIcon: Icon(Icons.home_filled)),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "",
          activeIcon: const Icon(CupertinoIcons.search),
        ),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_outlined),
            label: "",
            activeIcon: Icon(Icons.movie_filter)),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "",
            activeIcon: const Icon(Icons.account_circle))
      ],
    );
  }
}
