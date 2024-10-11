import 'package:flutter/material.dart';

// This is gonna have to be a stateful widget, but for now just a static todo list

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make an Appointment"),
        backgroundColor: Colors.blueGrey[200],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Filters (doctor speciality/gender/some other preferences)"),
              Text("Some sort of calendar the user can interact with"),
              Text("Show upcoming/already scheduled appointments"),
            ],
          ),
        ),
      ),
    );
  }
}