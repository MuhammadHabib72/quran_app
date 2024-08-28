import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/Inner.dart';
import 'package:flutter_application_2/pages/NamazDuas.dart';
import 'package:flutter_application_2/pages/starting_page.dart';
import 'package:flutter_application_2/pages/surah_detail_page.dart';
import 'package:flutter_application_2/pages/ImanMufassal.dart';

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
        '/NamazBook': (context) => NamazBook(),
        '/ImageDisplayPage': (context) => ImageDisplayPage(
            imagePath: "assets\Iman-e-Mufassal.png", title: "Eman Mufassal"),
      },
    );
  }
}
