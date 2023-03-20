import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
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
  int _selectedIndex = 0;
  // void _onTapped(int index,BuildContext context) {
  //   setState(() {
  //     _selectedIndex = index;
  //     context.read<NavigatorViewModel>().setIndex(index);
  //     print(_selectedIndex);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.read<NavigatorViewModel>().getCurrentIndex,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
          context.read<NavigatorViewModel>().setIndex(index);
          //print(_selectedIndex);
          print(context.read<NavigatorViewModel>().getCurrentIndex);
        });
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "",
        ),
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
