import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text.dart';
import 'package:my_app/common/cutom_brand.dart';

class BrandPage extends StatelessWidget {
  const BrandPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> brands = [
      {"name": "Nike", "stock": "265", "icon": Icons.shopping_basket_outlined},
      {"name": "Adidas", "stock": "95", "icon": Icons.shopping_bag_outlined},
      {"name": "Kenw..", "stock": "36", "icon": Icons.sports_football_outlined},
      {"name": "IKEA", "stock": "36", "icon": Icons.skateboarding_outlined},
      {"name": "Apple", "stock": "16", "icon": Icons.apple_outlined},
      {"name": "Acer", "stock": "36", "icon": Icons.laptop_chromebook_outlined},
      {"name": "Jordan", "stock": "36", "icon": Icons.sports_basketball},
      {"name": "Puma", "stock": "65", "icon": Icons.animation_outlined},
      {
        "name": "Zara",
        "stock": "36",
        "icon": Icons.shopping_cart_checkout_outlined,
      },
      {"name": "Samsu", "stock": "36", "icon": Icons.phone_android_outlined},
      {"name": "Nike", "stock": "265", "icon": Icons.shopping_basket_outlined},
      {"name": "Adidas", "stock": "95", "icon": Icons.shopping_bag_outlined},
      {"name": "Kenw..", "stock": "36", "icon": Icons.sports_football_outlined},
      {"name": "IKEA", "stock": "36", "icon": Icons.skateboarding_outlined},
      {"name": "Apple", "stock": "16", "icon": Icons.apple},
      {"name": "Acer", "stock": "36", "icon": Icons.computer_outlined},
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.arrow_back, color: Colors.white),
            SizedBox(width: 20),
            CustomText(text: "Brand", color: Colors.white),
          ],
        ),
        backgroundColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.all(14),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 50,
            childAspectRatio: 2,
          ),
          itemCount: brands.length,
          itemBuilder: (context, index) {
            final brand = brands[index];
            return CustomBrand(
              brandName: "${brand["name"]}",
              stock: "${brand["stock"]}",
              icon: brand["icon"],
            );
          },
        ),
      ),
    );
  }
}
