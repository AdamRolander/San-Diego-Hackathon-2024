import 'package:flutter/material.dart';
import 'pages/landing.dart';
import 'pages/patient_login.dart';
import 'pages/doctor_login.dart';
import 'pages/patient_home.dart';
import 'pages/doctor_home.dart';

void main() {
  runApp(const HackathonApp());
}

class HackathonApp extends StatelessWidget {
  const HackathonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Starting point
      routes: {
        '/': (context) => const LandingPage(),
        '/patientLogin': (context) => const PatientLoginPage(),
        '/doctorLogin': (context) => const DoctorLoginPage(),
        '/patientHome': (context) => const PatientHomePage(),
        '/doctorHome': (context) => const DoctorHomePage(),
      },
    );
  }
}
