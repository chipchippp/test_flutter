import 'package:app_mobile/pages/CartPage.dart';
import 'package:app_mobile/pages/HomePage.dart';
import 'package:app_mobile/pages/NavPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/': (context) => HomePage(),
        'cartPage': (context) => CartPage(),
        'navPage': (context) => NavPage()
      
      },
    );
  }
}
