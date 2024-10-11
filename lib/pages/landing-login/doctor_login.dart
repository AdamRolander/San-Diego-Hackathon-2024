import 'package:flutter/material.dart';

class DoctorLoginPage extends StatelessWidget {
  const DoctorLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clinician Login')),
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
                    Navigator.pushReplacementNamed(context, '/doctorHome');
                  },
                  style: const ButtonStyle(shadowColor: WidgetStatePropertyAll(Colors.purple)),
                  child: const Text('Login', style: TextStyle(color: Colors.purple),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}