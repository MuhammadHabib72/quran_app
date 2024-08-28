import 'package:flutter/material.dart';

class ImageDisplayPage extends StatelessWidget {
  final String imagePath;
  final String title;

  const ImageDisplayPage(
      {super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 54, 8, 99),
      ),
      backgroundColor:
          const Color.fromARGB(255, 232, 201, 240), // Background color
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
