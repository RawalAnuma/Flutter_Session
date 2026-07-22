import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text.dart';

class CustomOrderPage extends StatelessWidget {
  final String id;
  final String date;
  final String weight;
  final String price;
  final String status;
  final Color color;

  const CustomOrderPage({
    super.key,
    required this.id,
    required this.date,
    required this.weight,
    required this.price,
    required this.status,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomText(text: "Order #: ", fontWeight: FontWeight.w600),
                  CustomText(
                    text: id,
                    color: const Color.fromARGB(255, 84, 1, 101),
                  ),
                ],
              ),
              CustomText(text: date, fontSize: 14, fontWeight: FontWeight.bold),
              SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 183, 208, 229),
                ),
                child: CustomText(text: weight, fontSize: 13),
              ),
            ],
          ),

          Column(
            children: [
              CustomText(text: price, fontWeight: FontWeight.w900),
              SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 128, 46, 141),
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: color,
                ),
                child: CustomText(text: status, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
