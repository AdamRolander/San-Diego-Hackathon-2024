import 'package:flutter/material.dart';

void main() {
  runApp(const HackathonApp());
}

class HackathonApp extends StatelessWidget {
  const HackathonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Placeholder(), // LOGO or something
        title: const Text(
          "Our App Name",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey[200],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/pfp_generic.jpg'),
                      ),
                    ),
                    Text(
                      "User Name",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text("Make an Appointment"),
              onTap: () {
                Navigator.pop(context);
              }
            ),
            ListTile(
              title: const Text("My History"),
              onTap: () {
                Navigator.pop(context);
              }
            ),
            ListTile(
              title: const Text("Help"),
              onTap: () {
                Navigator.pop(context);
              }
            ),
            SizedBox(height: 20),
            ListTile(
              title: const Text("Logout", style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.pop(context);
              }
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Chatbot", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              child: Text("Make an Appointment"),
              onPressed: () {
                print("appointment button pressed");
              }),
            TextButton(
              onPressed: () {
                print("history button pressed");
              }, 
              child: Text("My History"),
            ),
          ],
        ),
      ),
    );
  }
}