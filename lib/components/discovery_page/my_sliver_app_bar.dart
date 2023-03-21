import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/view_models/search_bar_view_model.dart';
import 'package:provider/provider.dart';

class mySliverAppBar extends StatefulWidget {
  const mySliverAppBar({super.key});

  @override
  State<mySliverAppBar> createState() => _mySliverAppBarState();
}

class _mySliverAppBarState extends State<mySliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        floating: true,
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.black,
        title: context.watch<SearchBarViewModel>().getSearchBarPressed
            ? Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 38,
                      child: TextFormField(
                        onTap: () {},
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade900,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                      text: TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context
                                  .read<SearchBarViewModel>()
                                  .setSearchBarStatus();
                            },
                          text: "İptal",
                          style: TextStyle(color: Colors.grey))),
                ],
              )
            : Container(
                height: 38,
                child: TextFormField(
                  onTap: () {
                    context.read<SearchBarViewModel>().setSearchBarStatus();
                  },
                  textAlign: TextAlign.left,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade900,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ));
  }
}
