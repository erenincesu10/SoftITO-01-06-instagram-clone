import 'package:flutter/material.dart';
import 'package:instagram_clone/components/bottomNavBarPage.dart';

import 'package:instagram_clone/components/profile_page/profile_page_highlights.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfilePageHighlights(),
      bottomNavigationBar: myBottomNavBar(),
    );
  }
}
