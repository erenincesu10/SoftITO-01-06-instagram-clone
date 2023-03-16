import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/pages/discovery_page/components/my_sliver_app_bar.dart';
import 'package:instagram_clone/pages/discovery_page/components/search_list.dart';
import 'package:instagram_clone/pages/discovery_page/components/sliver_grid.dart';
import 'package:instagram_clone/services/providers/search_bar_view_model.dart';
import 'package:provider/provider.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            mySliverAppBar(),
            context.watch<SearchBarViewModel>().getSearchBarPressed
                ? SearchList()
                : mySliverGrid(),
          ],
        ),
      ),
    );
  }
}
