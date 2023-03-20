import 'package:flutter/material.dart';
import 'package:instagram_clone/app_init.dart';
import 'package:instagram_clone/components/bottomNavBarPage.dart';
import 'package:instagram_clone/components/instagram_stories.dart';
import 'package:instagram_clone/components/instragram_status.dart';
import 'package:instagram_clone/components/notification_page.dart';
import 'package:instagram_clone/components/timeline_appbar.dart';
import 'package:instagram_clone/components/timeline_post.dart';
import 'package:instagram_clone/view/discovery_page/discovery_page.dart';
import 'package:instagram_clone/view/profile_page/profile_page.dart';
import 'package:instagram_clone/view_models/search_bar_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => SearchBarViewModel())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: AppInit(),
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
