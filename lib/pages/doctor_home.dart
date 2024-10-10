import 'package:flutter/material.dart';
import 'landing.dart';

class DoctorHomePage extends StatelessWidget {
  const DoctorHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Home Page'),
      ),
      body: const Center(child: Text('Welcome to the Doctor Dashboard!')),
    );
  }
}