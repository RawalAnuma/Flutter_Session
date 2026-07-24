import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text_form_field.dart';
import 'package:my_app/common/social_login_container.dart';
import 'package:my_app/screens/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  }
                  if (!value.contains("@")) {
                    return "Enter a valid email with @";
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              CustomTextFormField(
                icon: Icons.lock,
                hintText: "Enter password",
                controller: passwordController,
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password is required";
                  }
                  if (value.length < 6) {
                    return "Password must be of 6 characters";
                  }
                  return null;
                },
              ),

              SizedBox(height: 35),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("Login Successful!");
                    }
                  },
                  child: Text("SIGN IN", style: TextStyle(fontSize: 15)),
                ),
              ),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 121, 120, 120),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => RegisterPage()),
                      );
                    },
                    child: Text("Create a new account"),
                  ),
                ],
              ),

              Center(
                child: Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 147, 146, 146),
                  ),
                ),
              ),

              SizedBox(height: 20),

              SocialLoginContainer(
                color: const Color.fromARGB(255, 16, 61, 137),
                icon: Icons.facebook,
                text: "CONNECT WITH FACEBOOK",
              ),

              SizedBox(height: 15),

              SocialLoginContainer(
                color: Colors.blue,
                icon: Icons.g_mobiledata,
                text: "CONNECT WITH GOOGLE",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
