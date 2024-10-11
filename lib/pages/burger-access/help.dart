import 'package:flutter/material.dart';

// Most likely stays as stateless

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help / FAQ / About"),
        backgroundColor: Colors.blueGrey[200],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Stuff goes here"),
            ],
          ),
        ),
      ),
    );
  }
}