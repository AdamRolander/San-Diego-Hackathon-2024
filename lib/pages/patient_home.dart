import 'package:flutter/material.dart';
import '../widgets/burger.dart';

class PatientHomePage extends StatelessWidget {
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Placeholder(), // LOGO or something
        title: const Text(
          "Our App Name",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey[200],
      ),
      endDrawer: const CustomDrawer(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("Chatbot", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              child: const Text("Make an Appointment"),
              onPressed: () {
                print("appointment button pressed");
              }),
            TextButton(
              onPressed: () {
                print("history button pressed");
              }, 
              child: const Text("My History"),
            ),
          ],
        ),
      ),
    );
  }
}