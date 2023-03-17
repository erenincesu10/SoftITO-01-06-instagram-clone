import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/components/explore_page/discovery_gridview.dart';
import '../bottomNavBarPage.dart';

class GridDiscovery extends StatelessWidget {
  const GridDiscovery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: GridView.custom(
            gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                pattern: [
                  const QuiltedGridTile(4, 2),
                  const QuiltedGridTile(2, 1),
                  const QuiltedGridTile(2, 1),
                  const QuiltedGridTile(4, 2),
                  const QuiltedGridTile(2, 1),
                  const QuiltedGridTile(2, 1),
                  const QuiltedGridTile(2, 1),
                  const QuiltedGridTile(2, 1),
                  const QuiltedGridTile(4, 2),
                  const QuiltedGridTile(2, 1),
                  const QuiltedGridTile(2, 1),
                  const QuiltedGridTile(2, 1),
                  const QuiltedGridTile(2, 1),
                  const QuiltedGridTile(4, 2),
                  const QuiltedGridTile(2, 1),
                  const QuiltedGridTile(2, 1),
                ]),
            childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://picsum.photos/500/500?random=$index'),
                )),
              ),
            ),
          ),
        ),
        bottomNavigationBar: myBottomNavBar(),
      ),
    );
  }
}
