// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/Inner.dart';
import 'package:flutter_application_2/pages/starting_page.dart';
import 'package:flutter_application_2/pages/surah_detail_page.dart';

void main() => runApp(QariApp());

class QariApp extends StatelessWidget {
  const QariApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'quran', // Set Times New Roman as the default font
      ),
      home: StartingPage(),
      routes: {
        '/Inner': (context) => Inner(),
        '/reading': (context) => Reading(),
      },
    );
  }
}
