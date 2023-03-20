import 'package:flutter/material.dart';
import 'package:instagram_clone/app_init.dart';
import 'package:instagram_clone/components/bottomNavBarPage.dart';
import 'package:instagram_clone/components/instagram_stories.dart';
import 'package:instagram_clone/components/instragram_status.dart';
import 'package:instagram_clone/components/notification_page.dart';
import 'package:instagram_clone/components/profiluser_widgets.dart';
import 'package:instagram_clone/components/timeline_appbar.dart';
import 'package:instagram_clone/components/timeline_post.dart';
import 'package:instagram_clone/view/discovery_page/discovery_page.dart';
import 'package:instagram_clone/view/profile_page/profile_page.dart';
import 'package:instagram_clone/view/reels_page/reels_page.dart';
import 'package:instagram_clone/view_models/navigator_view_model.dart';
import 'package:instagram_clone/view_models/reels_page_view_model.dart';
import 'package:instagram_clone/view_models/search_bar_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => SearchBarViewModel()),
    ChangeNotifierProvider(create: (_) => ReelsPageViewModel()),
    ChangeNotifierProvider(create: (_) => NavigatorViewModel())
  ], child: MyApp()));
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
  //NavigatorViewModel get vm => Provider.of<NavigatorViewModel>(context);

  List<Widget> pages = [
    StoriesInstagram(),
    DiscoveryPage(),
    Container(),
    ReelsPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      //body: pages[vm.getCurrentIndex],
      body: pages[context.watch<NavigatorViewModel>().getCurrentIndex],
      //bottomNavigationBar: myBottomNavBar(),
    );
  }
}
