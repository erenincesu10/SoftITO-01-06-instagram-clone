import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/reels_screen.dart';

import '../widgets/profileHeaderWidget.dart';
import 'gallery_screen.dart';
import 'ig_screen.dart';

class ProfilPageTab extends StatefulWidget {
  const ProfilPageTab({super.key});

  @override
  State<ProfilPageTab> createState() => _ProfilPageTabState();
}

class _ProfilPageTabState extends State<ProfilPageTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                  delegate: SliverChildListDelegate([
                profileHeaderWidget(context),
              ]))
            ];
          },
          body: Column(
            children: [
              Material(
                color: Colors.white,
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorWeight: 1,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.grid_on_sharp,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Image.asset(
                        'assets/icons/reelss.png',
                        width: 30,
                        height: 30,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Image.asset(
                        'assets/icons/ıgtv.png',
                        width: 45,
                        height: 45,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [Gallery(), Igtv(), Reels()],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
