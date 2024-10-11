import 'package:flutter/material.dart';
import '../../widgets/burger.dart';

// Most likely a stateful widget

class PatientHomePage extends StatelessWidget {
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Placeholder(), // LOGO or something
        title: const Text(
          "Our App Name - Patient Portal",
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
                Navigator.pushNamed(context, '/makeAppointment');
              }),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/myHistory');
              }, 
              child: const Text("My History"),
            ),
          ],
        ),
      ),
    );
  }
}