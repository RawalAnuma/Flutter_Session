import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text.dart';

class AcmeHomePage extends StatelessWidget {
  const AcmeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SafeArea(
          child: Center(
            child: CustomText(
              text: "Acme Home",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              CustomText(
                text: "Team",
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
              Divider(thickness: 2),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.star),
                  SizedBox(width: 10),
                  Text("What's New"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.flag),
                  SizedBox(width: 10),
                  Text("Mission, Vision, Values"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.toys),
                  SizedBox(width: 10),
                  Text("Company Goals - 2019"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 10),
                  Text("Employee Directory"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.campaign),
                  SizedBox(width: 10),
                  Text("Recent Press"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.engineering),
                  SizedBox(width: 10),
                  Text("Engineering Wiki"),
                ],
              ),
              SizedBox(height: 50),
              CustomText(
                text: "Policies",
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
              Divider(thickness: 2),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.edit_document),
                  SizedBox(width: 10),
                  Text("Office Manual"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.train),
                  SizedBox(width: 10),
                  Text("Vacation"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.close),
                  SizedBox(width: 10),
                  Text("Request Time Off"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.coffee),
                  SizedBox(width: 10),
                  Text("Benefits Policies"),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.policy),
                  SizedBox(width: 10),
                  Text("Expense Policy"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
