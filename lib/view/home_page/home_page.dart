import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/bottomNavBarPage.dart';
import 'package:instagram_clone/components/home_page/timeline_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: TimelineAppbar(),
      backgroundColor: Colors.black,
      bottomNavigationBar: myBottomNavBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: ((context, index) {
                  return _story(index);
                })),
              ),
              Divider(height: 2,color: Colors.grey,),
              SizedBox(height: 10,),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: ((context ,index){
                String userName = faker.internet.userName();
              return SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                Row(
                  children: [
                Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: NetworkImage('https://picsum.photos/500/500?random=$index'))
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(userName,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                
                ],),
                          Icon(Icons.more_horiz,color: Colors.white,)
                      
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(fit: BoxFit.fill,image: NetworkImage('https://picsum.photos/500/500?random=$index'))
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                children: [
                Icon(Icons.favorite_border_outlined,color: Colors.white,),
                SizedBox(width: 5,),
                Icon(CupertinoIcons.chat_bubble,color: Colors.white,),
                SizedBox(width: 5,),
                Icon(CupertinoIcons.paperplane,color: Colors.white,)
                          ],),
                          Icon(CupertinoIcons.bookmark,color: Colors.white,)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("${faker.randomGenerator.integer(10000)} beğenme",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 5,),
                      Row(children: [
                        Text("$userName",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)
                      ],),
                      SizedBox(height: 5,),
                      Text("${faker.randomGenerator.integer(1000)} yorumun tümünü gör",style: TextStyle(color: Colors.grey),),
                                            SizedBox(height: 5,),
                      Text("${faker.randomGenerator.integer(60)} dakika önce",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10,),
                    ],
                  ),
              );;
            }))
            ],
          ),
        ),
      ),
    );
  }
}

Widget _story(int index){
  return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(begin: Alignment.bottomLeft,end: Alignment.topRight,colors: [Colors.red,Colors.yellow,Colors.purple])
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: NetworkImage('https://picsum.photos/500/500?random=$index'))
                        ),
                      ),
                    ),
                  ),
                );
}

