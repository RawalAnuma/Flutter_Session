import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text.dart';

class AcmeHomePage extends StatelessWidget {
  const AcmeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: CustomText(
            text: "Acme Home",
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 40),
              CustomText(
                text: "Team",
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),

              SizedBox(height: 10),
              Divider(thickness: 1),
              SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.star),
                  SizedBox(width: 10),
                  CustomText(text: "What's New"),
                ],
              ),

              SizedBox(height: 15),

              Row(
                children: [
                  Icon(Icons.flag),
                  SizedBox(width: 10),
                  CustomText(text: "Mission, Vission, Values"),
                ],
              ),
              SizedBox(height: 15),

              Row(
                children: [
                  Icon(Icons.toys),
                  SizedBox(width: 10),
                  CustomText(text: "Company Goals - 2019"),
                ],
              ),

              SizedBox(height: 15),

              Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 10),
                  CustomText(text: "Employee Directory"),
                ],
              ),
              SizedBox(height: 15),

              Row(
                children: [
                  Icon(Icons.campaign),
                  SizedBox(width: 10),
                  CustomText(text: "Recent Press"),
                ],
              ),
              SizedBox(height: 15),

              Row(
                children: [
                  Icon(Icons.engineering),
                  SizedBox(width: 10),
                  CustomText(text: "Engineering Wiki"),
                ],
              ),
              SizedBox(height: 40),

              CustomText(
                text: "Policies",
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),

              SizedBox(height: 10),
              Divider(thickness: 1),
              SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.edit_document),
                  SizedBox(width: 10),
                  CustomText(text: "Office Manual"),
                ],
              ),
              SizedBox(height: 15),

              Row(
                children: [
                  Icon(Icons.train),
                  SizedBox(width: 10),
                  CustomText(text: "Vacation"),
                ],
              ),
              SizedBox(height: 15),

              Row(
                children: [
                  Icon(Icons.close),
                  SizedBox(width: 10),
                  CustomText(text: "Request Time Off"),
                ],
              ),
              SizedBox(height: 15),

              Row(
                children: [
                  Icon(Icons.coffee),
                  SizedBox(width: 10),
                  CustomText(text: "Benefits Policies"),
                ],
              ),
              SizedBox(height: 15),

              Row(
                children: [
                  Icon(Icons.policy),
                  SizedBox(width: 10),
                  CustomText(text: "Expense Policy"),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}