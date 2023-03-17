import 'package:flutter/material.dart';

Widget profileHeaderWidget(BuildContext context){
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white
    ),
    child: Padding(
      padding: const EdgeInsets.only(left:  18,right: 18,bottom: 10),
    ),
  );
}