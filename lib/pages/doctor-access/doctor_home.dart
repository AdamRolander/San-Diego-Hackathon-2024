import 'package:flutter/material.dart';
import '../../widgets/burger.dart';

// Most likely a stateful widget

class DoctorHomePage extends StatelessWidget {
  const DoctorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Placeholder(), // LOGO or something
        title: const Text(
          "Our App Name - Clinician Home",
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
            child: Text("Chatbot? Do we want?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              child: const Text("My Schedule"),
              onPressed: () {
                Navigator.pushNamed(context, '/schedulePage');
              }),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/infoPage');
              }, 
              child: const Text("My Info"),
            ),
          ],
        ),
      ),
    );
  }
}