import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text_form_field.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  var name = "";
  var email = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.backspace_outlined),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 25),
              CustomTextFormField(
                controller: _usernameController,
                hintText: "Enter username",
                icon: Icons.person,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Username is required';
                  }
                },
              ),
              SizedBox(height: 15),
              CustomTextFormField(
                controller: _emailController,
                hintText: "Enter email",
                icon: Icons.email,
                validator: (value) {
                  if (value!.isEmpty || !value.contains("@")) {
                    return "Email with '@' is required ";
                  }
                },
              ),
              SizedBox(height: 15),
              CustomTextFormField(
                controller: _passwordController,
                hintText: "Enter password",
                icon: Icons.password,
                isPassword: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password is required';
                  }
                },
              ),
              SizedBox(height: 15),

              SizedBox(
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      name = _usernameController.text;
                      email = _emailController.text;
                      password = _passwordController.text;
                    }
                    setState(() {});
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 100),

              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User Details", style: TextStyle(fontSize: 18)),
                    Text(name, style: TextStyle(fontSize: 18)),
                    Text(email, style: TextStyle(fontSize: 18)),
                    Text(password, style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
