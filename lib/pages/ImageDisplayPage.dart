import 'package:flutter/material.dart';

class ImageDisplayPage extends StatelessWidget {
  final String imagePath;
  final String title;

  const ImageDisplayPage({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(title),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        backgroundColor: const Color.fromARGB(255, 92, 44, 141),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: InteractiveViewer(
            boundaryMargin: const EdgeInsets.all(20.0),
            minScale: 1.0,
            maxScale: 4.0,
            child: Image.asset(imagePath),
          ),
        ),
      ),
    );
  }
}
