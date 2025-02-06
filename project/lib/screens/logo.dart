import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:
            const Color(0xffdff0d8), // Light green background color
        body: Center(
          child: Image.asset(
            'assets/g_consultancy_logo.jpeg', // Path to your logo image
            width: 200, // Adjust the size as needed
            height: 200,
          ),
        ),
      ),
    );
  }
}
