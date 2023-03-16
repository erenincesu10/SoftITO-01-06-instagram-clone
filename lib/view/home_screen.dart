import 'package:flutter/material.dart';
import 'package:instagram_clone/components/bottomNavBarPage.dart';
import 'package:instagram_clone/components/timeline_appbar.dart';
import 'package:instagram_clone/view/home/timeline_screen.dart';
import 'package:instagram_clone/view_models/home_page_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: screen,
      backgroundColor: Colors.black,
      bottomNavigationBar: const myBottomNavBar(),
    );
  }

  PreferredSizeWidget? get appbar {
    switch (context.watch<HomePageViewModel>().page) {
      case 0:
        return const TimelineAppbar();

      default:
        return null;
    }
  }

  Widget get screen {
    switch (context.watch<HomePageViewModel>().page) {
      case 0:
        return const TimelineScreen();
      default:
        return Container();
    }
  }
}
