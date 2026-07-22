import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text_form_field.dart';
import 'package:my_app/register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),

            Text(
              "Enter your email address to sign in.",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),

            SizedBox(height: 30),

            CustomTextFormField(
              icon: Icons.email,
              hintText: "Enter email",
              controller: emailController,
            ),

            SizedBox(height: 20),

            CustomTextFormField(
              icon: Icons.lock,
              hintText: "Enter password",
              controller: passwordController,
              isPassword: true,
            ),

            SizedBox(height: 35),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("SIGN IN", style: TextStyle(color: Colors.white)),
              ),
            ),

            SizedBox(height: 20),

            Center(
              child: Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.grey),
              ),
            ),

            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => RegisterPage()),
                  );
                },
                child: Text("Create a new account"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
