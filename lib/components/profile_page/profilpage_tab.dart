import 'package:flutter/material.dart';
import 'package:instagram_clone/components/recorded_screen.dart';
import '../../widgets/profileHeaderWidget.dart';
import '../timeline_post.dart';

class ProfilPageTab extends StatefulWidget {
  const ProfilPageTab({super.key});

  @override
  State<ProfilPageTab> createState() => _ProfilPageTabState();
}

class _ProfilPageTabState extends State<ProfilPageTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
          children: const [
            Material(
              color: Colors.black,
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 1,
                indicatorColor: Colors.grey,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.grid_on_sharp,
                      color: Colors.white,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person_pin_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [TimeLinePost(), Recorded()],
            ))
          ],
        ),
      ),
    );
  }
}
