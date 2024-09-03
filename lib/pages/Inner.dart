import 'package:flutter/material.dart';

class Inner extends StatelessWidget {
  const Inner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 201, 240),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // "Select" text with underline
            const Text(
              'Select',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 54, 8, 99),
                decorationColor: Color.fromARGB(255, 235, 175, 250),
                decorationThickness: 3,
              ),
            ),
            const SizedBox(height: 90),

            // Reading Mode button container
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 201, 240),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/reading'),
                  child: Container(
                    height: 110,
                    padding: const EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 175, 250),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: const Text(
                      'Reading Mode',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 39, 1, 78),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Namaz Book button container
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 201, 240),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/NamazBook'),
                  child: Container(
                    height: 110,
                    padding: const EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 175, 250),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: const Text(
                      'Namaz Book',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 39, 1, 78),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Islamic Calendar button container (new)
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 201, 240),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/IslamicCalendar'),
                  child: Container(
                    height: 110,
                    padding: const EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 175, 250),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: const Text(
                      'Islamic Calendar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 42,
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
      ),
    );
  }
}
