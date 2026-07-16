import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile"), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 50, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Personal Details"),
              SizedBox(height: 20),
              CustomText(text: "Cart"),
              SizedBox(height: 20),
              CustomText(text: "Whislist"),
              SizedBox(height: 20),
              CustomText(text: "Orders"),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text("Logout", style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}