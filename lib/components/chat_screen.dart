import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white70,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.camera_alt,
                color: Colors.blue,
              ),
              Text(
                "Camera",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              ListTile(
                title: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                subtitle: Text("Active 13m ago"),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 30,
                ),
                trailing: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                subtitle: Text("Active 13m ago"),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 30,
                ),
                trailing: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                subtitle: Text("Active 13m ago"),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 30,
                ),
                trailing: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                subtitle: Text("Active 13m ago"),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 30,
                ),
                trailing: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                subtitle: Text("Active 13m ago"),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 30,
                ),
                trailing: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                subtitle: Text("Active 13m ago"),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 30,
                ),
                trailing: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                subtitle: Text("Active 13m ago"),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 30,
                ),
                trailing: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                subtitle: Text("Active 13m ago"),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 30,
                ),
                trailing: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                subtitle: Text("Active 13m ago"),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 30,
                ),
                trailing: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                subtitle: Text("Active 13m ago"),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 30,
                ),
                trailing: Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
