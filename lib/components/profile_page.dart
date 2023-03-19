import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/bottomNavBarPage.dart';
import 'package:instagram_clone/components/profile_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, index) {
          return [
            const ProfileAppBar(),
          ];
        },
        body: Scaffold(
          bottomNavigationBar: myBottomNavBar(),
        ),
      ),
    );
  }
}
