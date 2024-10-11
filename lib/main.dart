import 'package:flutter/material.dart';

import 'pages/landing-login/landing.dart';
import 'pages/landing-login/patient_login.dart';
import 'pages/landing-login/doctor_login.dart';
import 'pages/patient-access/patient_home.dart';
import 'pages/patient-access/make_appointment.dart';
import 'pages/patient-access/my_history.dart';
import 'pages/doctor-access/doctor_home.dart';
import 'pages/doctor-access/schedule.dart';
import 'pages/doctor-access/doctor_info.dart';
import 'pages/burger-access/profile.dart';
import 'pages/burger-access/feedback.dart';
import 'pages/burger-access/help.dart';

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
        '/makeAppointment': (context) => const AppointmentPage(),
        '/myHistory': (context) => const HistoryPage(),
        '/myProfile': (context) => const ProfilePage(),
        '/helpPage': (context) => const HelpPage(),
        '/feedbackPage': (context) => const FeedbackPage(),
        '/schedulePage': (context) => const SchedulePage(),
        '/infoPage': (context) => const InfoPage(),
      },
    );
  }
}
