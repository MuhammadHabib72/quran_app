import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_2/pages/Inner.dart';

class StartingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(229, 182, 242, 1), // Background color
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60), // Spacing from top
            // Top section with app name and subtitle
            const Text(
              'Qari. Ai',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Color.fromRGBO(48, 7, 89, 1),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Learn , Memorize and Recite\nQuran Anywhere Anytime',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(157, 29, 242, 1),
              ),
            ),
            const SizedBox(height: 20),
            // Center section with image and "Welcome" text
            Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none, // Allow overflow for button
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.9, // 90% of screen width
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 54, 8, 99), // Purple background color
                      borderRadius:
                          BorderRadius.circular(20), // Rounded corners
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        // Spacing between text and image
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Container(
                            height: 360, // Adjusted height to match the design
                            child: ColorFiltered(
                              colorFilter: const ColorFilter.mode(
                                Colors.transparent, // Adjust the filter color
                                BlendMode.dstOut, // Blend mode to remove black
                              ),
                              child: Image.asset(
                                'assets/Masjid.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Get Started button
                  Positioned(
                    bottom: -35, // Adjust this value to control the overlap
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/Inner'),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(157, 29, 242, 1),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),

                              blurRadius: 10,
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 11,
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 31,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
