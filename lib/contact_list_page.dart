import 'package:flutter/material.dart';
import 'package:my_app/common/common_phone_card.dart';
import 'package:my_app/common/custom_text.dart';

class ContactListPage extends StatelessWidget {
  const ContactListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Simple Contact List",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10),
            CommonPhoneCard(name: "Anuma", number: "23829812730"),
            SizedBox(height: 10),
            Divider(thickness: 2),

            SizedBox(height: 10),
            CommonPhoneCard(
              name: "Anuma",
              number: "847925514523",
              color: Colors.purple,
            ),
            SizedBox(height: 10),
            Divider(thickness: 2),

            SizedBox(height: 10),
            CommonPhoneCard(
              name: "Anuma",
              number: "847925514523",
              color: Colors.redAccent,
            ),
            SizedBox(height: 10),
            Divider(thickness: 2),

            SizedBox(height: 10),
            CommonPhoneCard(
              name: "Anuma",
              number: "847925514523",
              color: Colors.green,
            ),
            SizedBox(height: 10),
            Divider(thickness: 2),

            SizedBox(height: 10),
            CommonPhoneCard(
              name: "Anuma",
              number: "847925514523",
              color: Colors.deepOrange,
            ),
            SizedBox(height: 10),
            Divider(thickness: 2),

            SizedBox(height: 10),
            CommonPhoneCard(name: "Anuma", number: "847925514523"),
            SizedBox(height: 10),
            Divider(thickness: 2),

            SizedBox(height: 10),
            CommonPhoneCard(
              name: "Anuma",
              number: "847925514523",
              color: Colors.blueGrey,
            ),
            SizedBox(height: 10),
            Divider(thickness: 2),
          ],
        ),
      ),
    );
  }
}
