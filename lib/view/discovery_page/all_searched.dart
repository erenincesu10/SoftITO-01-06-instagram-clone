import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/bottomNavBarPage.dart';
import 'package:instagram_clone/components/discovery_page/search_list.dart';

class AllSearchedPage extends StatefulWidget {
  const AllSearchedPage({super.key});

  @override
  State<AllSearchedPage> createState() => _AllSearchedPageState();
}

class _AllSearchedPageState extends State<AllSearchedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              "Yakınlardaki Aramalar",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            RichText(
                text: TextSpan(
                    text: "Tümünü Temizle",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => users.clear())),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) => users[index],
        ),
      ),
      bottomNavigationBar: myBottomNavBar(),
    );
  }
}
