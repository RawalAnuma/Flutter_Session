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
            SizedBox(height: 20),
            CommonPhoneCard(name: "Ram", number: "1234567"),
            SizedBox(height: 20),
            CommonPhoneCard(name: "Shyam", number: "1234567"),
            SizedBox(height: 20),
            CommonPhoneCard(name: "Hari", number: "1234567"),
            SizedBox(height: 20),
            CommonPhoneCard(name: "Sita", number: "1234567"),
            SizedBox(height: 20),
            CommonPhoneCard(name: "Gita", number: "1234567"),
          ],
        ),
      ),
    );
  }
}
