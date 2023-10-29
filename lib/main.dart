import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:sports_app/Elements/bnb.dart';
import 'package:sports_app/Pages/health.dart';
=======
import 'package:sports_app/Pages/first_page.dart';
// import 'package:sports_app/Elements/bnb.dart';
// ignore_for_file: prefer_const_constructors
>>>>>>> Stashed changes

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
