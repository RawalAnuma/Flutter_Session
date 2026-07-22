import 'package:flutter/material.dart';

class SocialLoginContainer extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;

  const SocialLoginContainer({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 15),

          Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
