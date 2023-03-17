import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class mySliverGrid extends StatefulWidget {
  const mySliverGrid({super.key});

  @override
  State<mySliverGrid> createState() => _mySliverGridState();
}

class _mySliverGridState extends State<mySliverGrid> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
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
      // const SliverGridDelegateWithMaxCrossAxisExtent(
      //   maxCrossAxisExtent: 200.0,
      //   mainAxisSpacing: 0,
      //   crossAxisSpacing: 0,
      // ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            // height: 200,
            // width: 200,
            // alignment: Alignment.center,
            // color: Colors.teal[100 * (index % 9)],
            // child: Text('Grid Item $index'),
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  NetworkImage('https://picsum.photos/500/500?random=$index'),
            )),
          );
        },
        childCount: 30,
      ),
    );
  }
}
