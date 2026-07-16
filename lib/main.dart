import 'package:flutter/material.dart';
import 'package:my_app/acme_home_page.dart';
import 'package:my_app/contact_page.dart';
// import 'package:my_app/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(title: 'Profile page', home: const ProfilePage());
    return MaterialApp(title: "Acme Home Page", home: const ContactPage());
  }
}
