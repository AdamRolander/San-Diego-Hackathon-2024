import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            title: const Text("My Profile"),
            onTap: () {
              // Navigator.pop(context); // this keeps/removes the burger once you come back - decide later
              Navigator.pushNamed(context, '/myProfile');
            }
          ),
          ListTile(
            title: const Text("Help"),
            onTap: () {
              Navigator.pushNamed(context, '/helpPage');
            }
          ),
          ListTile(
            title: const Text("Feedback"),
            onTap: () {
              Navigator.pushNamed(context, '/feedbackPage');
            }
          ),
          const SizedBox(height: 20),
          ListTile(
            title: const Text("Logout", style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/', (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
    );
  }
}