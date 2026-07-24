import 'package:flutter/material.dart';
import 'package:my_app/common/custom_order_page.dart';
import 'package:my_app/common/custom_text.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> orders = [
      {
        "id": "429242424",
        "date": "Mon, July 3rd",
        "weight": "2.5lbs",
        "price": "\$1.50",
        "status": "Shipped",
        "color": const Color.fromARGB(255, 227, 173, 237),
      },

      {
        "id": "429242424",
        "date": "Mon, July 3rd",
        "weight": "2.5lbs",
        "price": "\$1.50",
        "status": "Shipped",
        "color": const Color.fromARGB(255, 233, 191, 241),
      },

      {
        "id": "429242424",
        "date": "Mon, July 3rd",
        "weight": "2.5lbs",
        "price": "\$1.50",
        "status": "Accepted",
        "color": const Color.fromARGB(255, 245, 189, 105),
      },
    ];
    return Scaffold(
      appBar: AppBar(title: Icon(Icons.arrow_back, size: 35)),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),

        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     CustomText(
        //       text: "Recent Orders",
        //       fontSize: 25,
        //       fontWeight: FontWeight.bold,
        //     ),
        //     CustomText(
        //       text: "Below are your most recent orders",
        //       color: const Color.fromARGB(255, 44, 44, 44),
        //       fontSize: 15,
        //       fontWeight: FontWeight.w500,
        //     ),
        //  SizedBox(height: 10),
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            final order = orders[index];
            return Column(
              children: [
                CustomOrderPage(
                  id: "${order["id"]}",
                  date: "${order["date"]}",
                  weight: "${order["weight"]}",
                  price: "${order["price"]}",
                  status: "${order["status"]}",
                  color: order["color"],
                ),
                SizedBox(height: 60),
              ],
            );
          },
        ),

        // CustomOrderPage(),
        // SizedBox(height: 18),
        // CustomOrderPage(),
        // SizedBox(height: 18),
        // CustomOrderPage(),
      ),
    );
  }
}
