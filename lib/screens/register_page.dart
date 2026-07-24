import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text_form_field.dart';
import 'package:my_app/common/social_login_container.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Account")),

      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //SizedBox(height: 10),
              Text(
                "Create Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),

              SizedBox(height: 15),

              Text(
                "Enter your name, email and password for sign up.",
                style: TextStyle(
                  color: const Color.fromARGB(255, 148, 147, 147),
                  fontSize: 18,
                ),
              ),

              SizedBox(height: 30),

              CustomTextFormField(
                icon: Icons.person,
                hintText: "Full Name",
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Name is required";
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              CustomTextFormField(
                icon: Icons.email,
                hintText: "Email Address",
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
                hintText: "Password",
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

              SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("Registration Successful");
                    }
                  },
                  child: Text(" SIGN UP", style: TextStyle(fontSize: 15)),
                ),
              ),

              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(" Already have an account?"),
                ),
              ),

              Center(
                child: Text(
                  "By signing up, you agree to our Terms Conditions & Privacy Policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 121, 120, 120),
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(height: 5),
              Center(
                child: Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 147, 146, 146),
                  ),
                ),
              ),

              SizedBox(height: 15),

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
