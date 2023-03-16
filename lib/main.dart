import 'package:flutter/material.dart';

import 'package:instagram_clone/components/bottomNavBarPage.dart';
import 'package:instagram_clone/components/instagram_stories.dart';
import 'package:instagram_clone/components/timeline_appbar.dart';

import 'package:instagram_clone/pages/discovery_page/discovery_page.dart';
import 'package:instagram_clone/services/providers/search_bar_view_model.dart';
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
      home: MyHomePage(),
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
      body: DiscoveryPage(),
      bottomNavigationBar: myBottomNavBar(),
    );
  }
}
