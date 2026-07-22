import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text.dart';

class CustomBrand extends StatelessWidget {
  final String brandName;
  final String stock;
  final IconData icon;

  const CustomBrand({
    super.key,
    required this.brandName,
    required this.stock,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 90,
          width: 180,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.white, size: 40),
              SizedBox(width: 15),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(text: brandName),
                      SizedBox(width: 10),
                      Icon(
                        Icons.verified_rounded,
                        color: Colors.blueAccent,
                        size: 20,
                      ),
                    ],
                  ),
                  CustomText(text: "$stock products", fontSize: 15),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
