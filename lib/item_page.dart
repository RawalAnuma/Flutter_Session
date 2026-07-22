import 'package:flutter/material.dart';
import 'package:my_app/common/custom_text.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> cities = [
      "NewYork,", //0
      "LosAngeles", //1
      "Chicago", //2
      "Houston", //3
      "Phoenix",
      "Philadelphia",
      "SanAntonio",
      "SanDiego",
      "Dallas",
      "SanJose",
    ];
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Item Page", color: Colors.black, fontSize: 24),
      ),

      // body: ListView.separated(
      //   separatorBuilder: (context, index) => Divider(),
      //   itemCount: cities.length,
      //   itemBuilder: (context, index) {
      //     //0
      //     return ListTile(
      //       title: CustomText(text: cities[index]),
      //       leading: CustomText(text: "${index + 1}."),
      //     );
      //   },
      // ),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 32,
          mainAxisSpacing: 32,
        ),
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.red,
            child: CustomText(text: cities[index], color: Colors.white),
          );
        },
      ),
    );
  }
}