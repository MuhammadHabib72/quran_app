import 'package:flutter/material.dart';

class Inner extends StatelessWidget {
  const Inner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 232, 201, 240), // Light purple background color
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
            const SizedBox(
                height:
                    90), // Spacing between the "Select" text and button containers

            // First button container
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width *
                    0.9, // 90% of screen width
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 232, 201, 240), // Light purple container color
                  borderRadius: BorderRadius.circular(35), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/reading'),
                    child: Container(
                      height: 110,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                            255, 235, 175, 250), // Button color
                        borderRadius:
                            BorderRadius.circular(35), // Rounded corners
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
            ),
            const SizedBox(height: 0), // Spacing between button containers

            // Second button container
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width *
                    0.9, // 90% of screen width
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 232, 201, 240), // Light purple container color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 235, 175, 250), // Button color
                    borderRadius: BorderRadius.circular(35), // Rounded corners
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
          ],
        ),
      ),
    );
  }
}
