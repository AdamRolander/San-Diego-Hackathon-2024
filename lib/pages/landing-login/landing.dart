import 'package:flutter/material.dart';

// The Landing Page is the first thing that opens upon launching the app
// It has pointers to the Patient Login and Clinician Login Pages


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('APP NAME Login Portal')),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: SizedBox(width: 100, height: 100, child: Placeholder()),
              ), // LOGO
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/patientLogin');
                  },
                  style: const ButtonStyle(
                    shadowColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  child: const Text('Patient Login',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/doctorLogin');
                  },
                  style: const ButtonStyle(
                    shadowColor: WidgetStatePropertyAll(Colors.purple)
                  ),
                  child: const Text('Clinician Login', 
                                    style: TextStyle(
                                      color: Colors.purple,
                                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}