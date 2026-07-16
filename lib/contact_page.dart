import 'package:flutter/material.dart';
import 'package:my_app/common/common_phone_card.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Page")),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: Column(
          children: [
            CommonPhoneCard(name: "Ram"),
            SizedBox(height: 20),
            CommonPhoneCard(name: "Shyam"),
            SizedBox(height: 20),
            CommonPhoneCard(name: "Hari"),
            SizedBox(height: 20),
            CommonPhoneCard(name: "Sita"),
            SizedBox(height: 20),
            CommonPhoneCard(name: "Gita"),
          ],
        ),
      ),
    );
  }
}