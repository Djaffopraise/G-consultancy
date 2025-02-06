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
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150', // Replace with your image URL
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, welcome',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[300],
                        ),
                      ),
                      const Text(
                        'praise B',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 52, 103, 8)),
                      child: const Text(
                        'General',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ))),
              Stack(
                children: [
                  const Icon(
                    Icons.notifications,
                    size: 28,
                    color: Colors.white,
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.only(bottom: 500.00),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 46, 72, 19)),
                  child: const Text(
                    'General',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))),
        ),
      ),
    );
  }
}
