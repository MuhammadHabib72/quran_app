import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/ImanMufassal.dart';

class NamazBook extends StatelessWidget {
  const NamazBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 232, 201, 240), // Light purple background color
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: SingleChildScrollView(
          // Make the entire content scrollable
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 54, 8, 99),
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 235, 175, 250),
                  decorationThickness: 3,
                ),
              ),
              const SizedBox(height: 50),
              for (var buttonInfo in [
                {
                  'text': 'Eman Mufasil',
                  'imagePath': 'assets/Iman-e-Mufassal.png'
                },
                {
                  'text': 'Eman Majmal',
                  'imagePath': 'assets/Iman-e-Mujmal.png'
                },
                {'text': '6 Kalmas', 'imagePath': 'assets/6Kalmas.png'},
                {
                  'text': 'Duwa for entering masjid',
                  'imagePath': 'assets/DuwaEnteringMasjid.png'
                },
                {
                  'text': 'Duwa for leaving masjid',
                  'imagePath': 'assets/DuwaLeavingMasjid.png'
                },
                {
                  'text': 'Duwa to start wudhu',
                  'imagePath': 'assets/DuwaStartWudhu.png'
                },
              ])
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 232, 201, 240),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ImageDisplayPage(
                                  imagePath: buttonInfo['imagePath']!,
                                  title: buttonInfo['text']!,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 70,
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 235, 175, 250),
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Text(
                              buttonInfo['text']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 39, 1, 78),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
