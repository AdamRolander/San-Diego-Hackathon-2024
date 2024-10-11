import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My History"),
        backgroundColor: Colors.blueGrey[200],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("List Conditions/Prescriptions"),
              Text("List Past Appointments"),
              Text("Leave reviews for past appointments?"),
            ],
          ),
        ),
      ),
    );
  }
}