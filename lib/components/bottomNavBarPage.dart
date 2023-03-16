import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/discovery_gridview.dart';
import 'package:instagram_clone/components/profile_page.dart';

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
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GridDiscovery()));
            },
          ),
          label: "",
          activeIcon: Icon(CupertinoIcons.search),
        ),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.add_box_outlined),
              onPressed: () {
                print("clicked");
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
                        builder: (context) => const ProfilePage()));
              },
            ),
            label: "",
            activeIcon: const Icon(Icons.account_circle))
      ],
    );
  }
}
