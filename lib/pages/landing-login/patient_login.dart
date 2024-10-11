import 'package:flutter/material.dart';

class PatientLoginPage extends StatelessWidget {
  const PatientLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Patient Login')),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Username'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/patientHome');
                  },
                  style: const ButtonStyle(shadowColor: WidgetStatePropertyAll(Colors.blue)),
                  child: const Text('Login', style: TextStyle(color: Colors.blue),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}