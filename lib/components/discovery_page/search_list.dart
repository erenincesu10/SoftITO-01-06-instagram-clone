import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:instagram_clone/view/discovery_page/all_searched.dart';

List<Widget> users = [
  ListTile(
      leading: CircleAvatar(
        foregroundImage: AssetImage("assets/icons/story.png"),
      ),
      title: Column(
        children: [
          Text(
            "Kullanıcı Adı",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.start,
          ),
          Text(
            "İsim soyisim - Takip ediyorsun",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            color: Colors.grey,
          ))),
  ListTile(
      leading: CircleAvatar(
        foregroundImage: AssetImage("assets/icons/story.png"),
      ),
      title: Column(
        children: [
          Text(
            "Kullanıcı Adı",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.start,
          ),
          Text(
            "İsim soyisim - Takip ediyorsun",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            color: Colors.grey,
          ))),
  ListTile(
      leading: CircleAvatar(
        foregroundImage: AssetImage("assets/icons/story.png"),
      ),
      title: Column(
        children: [
          Text(
            "Kullanıcı Adı",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.start,
          ),
          Text(
            "İsim soyisim - Takip ediyorsun",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            color: Colors.grey,
          ))),
  ListTile(
      leading: CircleAvatar(
        foregroundImage: AssetImage("assets/icons/story.png"),
      ),
      title: Column(
        children: [
          Text(
            "Kullanıcı Adı",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.start,
          ),
          Text(
            "İsim soyisim - Takip ediyorsun",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            color: Colors.grey,
          ))),
];

class SearchList extends StatefulWidget {
  const SearchList({super.key});

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 1, (context, index) {
      return SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Yakınlardakiler",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                RichText(
                    text: TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllSearchedPage())),
                        text: "Tümünü Gör",
                        style: TextStyle(color: Colors.blue)))
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return users[index];
                  }),
            ),
          ],
        ),
      );
    }));
  }
}
