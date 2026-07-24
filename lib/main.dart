import 'package:flutter/material.dart';
import 'package:my_app/screens/acme_home_page.dart';
import 'package:my_app/screens/brand_page.dart';
//import 'package:my_app/acme_home_page.dart';
//import 'package:my_app/contact_page.dart';
import 'package:my_app/screens/contact_list_page.dart';
import 'package:my_app/screens/expanded_demo.dart';
import 'package:my_app/screens/login_page.dart';
import 'package:my_app/screens/order_page.dart';
import 'package:my_app/screens/product_page.dart';
import 'package:my_app/provider/counter_provider.dart';
import 'package:my_app/provider/todo_provider.dart';
import 'package:my_app/screens/simple_todo_page.dart';
import 'package:provider/provider.dart';
// import 'package:my_app/profile_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => TodoProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(title: 'Profile page', home: const ProfilePage());
    //return MaterialApp(title: "Acme Home Page", home: const AcmeHomePage());
    //return MaterialApp(title: "Contct List Page", home: const ContactListPage(),);
    //return MaterialApp(title: "Brand Page", home: const BrandPage());
    //return MaterialApp(title: "Expanded Page", home: const ExpandedDemo());
    //return MaterialApp(title: "Order Page", home: const OrderPage());
    //return MaterialApp(title: "Product Page", home: const ProductPage());
    //return MaterialApp(title: "Login Page", home: LoginPage());
    return MaterialApp(title: "Todo Page", home: SimpleTodoPage());
  }
}
