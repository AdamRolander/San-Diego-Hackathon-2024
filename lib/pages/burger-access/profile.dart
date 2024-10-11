import 'package:flutter/material.dart';

// This is gonna have to be a stateful widget, but for now just a static todo list

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.blueGrey[200],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Stuff goes here"),
              Text("Requires firebase collab"),
            ],
          ),
        ),
      ),
    );
  }
}