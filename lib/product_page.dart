import 'package:flutter/material.dart';
import 'package:my_app/common/custom_product_card.dart';
import 'package:my_app/common/custom_text.dart';
import 'package:my_app/core/app_image.dart';
import 'package:my_app/product_detail_page.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {"name": "Nike", "price": "\$24.0", "image": AppImage.shoe1},
      {"name": "Puma", "price": "\$45.0", "image": AppImage.shoe2},
      {"name": "Nordstrom", "price": "\$44.0", "image": AppImage.shoe3},
      {"name": "Addidas", "price": "\$56.0", "image": AppImage.shoe4},
      {"name": "Caliber", "price": "\$68.0", "image": AppImage.shoe5},
      {"name": "Nike", "price": "\$34.0", "image": AppImage.shoe6},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: CustomText(
            text: "Home",
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
            childAspectRatio: 0.65,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(
                      name: product["name"],
                      price: product["price"],
                      image: product["image"],
                    ),
                  ),
                );
              },
              child: CustomProductCard(
                name: product["name"],
                price: product["price"],
                image: Image.asset(product["image"]),
              ),
            );
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 218, 218, 218),
    );
  }
}
