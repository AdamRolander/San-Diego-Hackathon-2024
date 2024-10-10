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
          const SizedBox(height: 20),
          ListTile(
            title: const Text("Logout", style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: () {
              // Navigator.of(context).pushNamedAndRemoveUntil(
              //   '/', (Route<dynamic> route) => false);
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}