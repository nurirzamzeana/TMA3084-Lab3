import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      appBar: AppBar(
        title: const Text('Nana Bakery'),
        centerTitle: true,
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Nurirzam | TMA3084 Lab 3 | 102885',
                style: TextStyle(fontSize: 16, color: Colors.brown),
              ),
            ),
            MenuCard('croissant.png', 'Croissant', 'RM 5.00'),
            MenuCard('strawberry_cake.png', 'Strawberry Cake', 'RM 8.00'),
            MenuCard('cookies.png', 'Cookies', 'RM 3.00'),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard(this.file, this.name, this.price, {super.key});

  final String file;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color(0xFFC97B63),
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset('assets/images/$file', width: 100, height: 100),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    price,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
