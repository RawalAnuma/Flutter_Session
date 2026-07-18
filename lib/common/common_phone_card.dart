import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text.dart';

class CommonPhoneCard extends StatelessWidget {
  final String name;
  final String number;
  final Color color;

  const CommonPhoneCard({
    super.key,
    required this.name,
    required this.number,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: color,
              ),
            ),
            Positioned(
              left: 2.5,
              child: Icon(Icons.person_rounded, size: 55, color: Colors.white),
            ),
          ],
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: name, color: Colors.black),
            CustomText(
              text: number,
              color: const Color.fromARGB(255, 93, 92, 92),
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.keyboard_arrow_right,
          size: 40,
          color: const Color.fromARGB(255, 93, 92, 92),
        ),
      ],
    );
  }
}
