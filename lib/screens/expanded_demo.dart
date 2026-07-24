import 'package:flutter/material.dart';
import 'package:my_app/provider/todo_provider.dart';
import 'package:my_app/screens/brand_page.dart';
import 'package:my_app/common/custom_text.dart';
import 'package:my_app/screens/contact_list_page.dart';
import 'package:my_app/screens/counter_page.dart';
import 'package:my_app/screens/item_page.dart';
import 'package:my_app/screens/todo_screen.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Expanded Demo",
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: CustomText(
                    text: "Welcome to pokhara city and visit to lakeside.",
                    fontSize: 20,
                  ),
                ),
              ],
            ),

            Flexible(
              child: Text(
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets. It has survived not only many decades, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised thanks to these sheets and more recently with desktop publishing software like Aldus PageMaker and Microsoft Word including versions of Lorem Ipsum.",
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Navigation",
              style: TextStyle(color: Colors.purple, fontSize: 20),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BrandPage()),
                );
              },
              // onLongPress: () {
              //   print("Phone is vibrating");
              // },
              // onDoubleTap: () {
              //   print("User tap this product double");
              // },
              child: Text(
                "Product",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ItemPage()),
                );
              },
              child: Text(
                "Item",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactListPage()),
                );
              },
              child: Text(
                "Contact",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),

            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterPage()),
                );
              },
              // onLongPress: () {
              //   print("Phone is vibrating");
              // },
              // onDoubleTap: () {
              //   print("User tap this product double");
              // },
              child: Text(
                "Counter",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),

            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoScreen()),
                );
              },
              child: Text(
                "Todo",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
