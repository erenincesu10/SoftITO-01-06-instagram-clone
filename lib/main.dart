import 'package:flutter/material.dart';
import 'package:instagram_clone/app_init.dart';
import 'package:instagram_clone/components/bottomNavBarPage.dart';
import 'package:instagram_clone/components/instagram_stories.dart';
import 'package:instagram_clone/components/timeline_appbar.dart';
import 'package:instagram_clone/components/timeline_post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const AppInit(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: TimelineAppbar(),
      body: StoriesInstagram(),
      bottomNavigationBar: myBottomNavBar(),
    );
  }
}
