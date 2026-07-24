import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text.dart';
import 'package:my_app/core/app_image.dart';
import 'package:my_app/screens/product_detail_page.dart';

class CustomProductCard extends StatelessWidget {
  final String name;
  final String price;
  final Image image;

  const CustomProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ProductDetailPage(name: name, price: price, image: image),
          ),
        );
      },
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: const Color.fromARGB(255, 179, 199, 200),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  image,
                  const Positioned(
                    right: 10,
                    top: 10,
                    child: Icon(Icons.favorite_border_outlined, size: 30),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              CustomText(
                text: name,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              CustomText(text: price, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
