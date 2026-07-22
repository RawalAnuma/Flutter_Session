import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text_form_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Account")),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Create Account",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),

            SizedBox(height: 15),

            Text(
              "Enter your name, email and password for sign up.",
              style: TextStyle(
                color: const Color.fromARGB(255, 103, 101, 101),
                fontSize: 18,
              ),
            ),

            SizedBox(height: 30),

            CustomTextFormField(
              icon: Icons.person,
              hintText: "Full Name",
              controller: nameController,
            ),

            SizedBox(height: 20),

            CustomTextFormField(
              icon: Icons.email,
              hintText: "Email Address",
              controller: emailController,
            ),

            SizedBox(height: 20),

            CustomTextFormField(
              icon: Icons.lock,
              hintText: "Password",
              controller: passwordController,
              isPassword: true,
            ),

            SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text(" SIGN UP")),
            ),

            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(" Already have an account?"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
