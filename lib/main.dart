import 'package:design/pages/home.dart';
import 'package:design/pages/product_details.dart';
import 'package:design/pages/starter.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StarterPage()
    );
  }
}
