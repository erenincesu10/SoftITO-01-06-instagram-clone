import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/notification.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: false,
          title: Text("Bildirimler"),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              notificationswidget(),
              SizedBox(
                height: 20,
              ),
              notificationswidget(),
              SizedBox(
                height: 20,
              ),
              notificationswidget(),
              SizedBox(
                height: 20,
              ),
              notificationswidget(),
              SizedBox(
                height: 20,
              ),
              notificationswidget(),
              SizedBox(
                height: 20,
              ),
              notificationswidget(),
              SizedBox(
                height: 20,
              ),
              notificationswidget(),
              SizedBox(
                height: 20,
              ),
              notificationswidget(),
              SizedBox(
                height: 20,
              ),
              notificationswidget(),
              SizedBox(
                height: 20,
              ),
              notificationswidget(),
            ],
          ),
        ));
  }
}

class notificationswidget extends StatelessWidget {
  const notificationswidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              "https://www.dergy.com/wp-content/uploads/2020/06/hidra.jpg"),
        ),
        SizedBox(
          width: 25,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Hidra ",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Text("seni takip etmeye başladı ",
                style: TextStyle(color: Colors.white)),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Takip",
                  style: TextStyle(),
                ))
          ],
        ),
      ],
    );
  }
}
