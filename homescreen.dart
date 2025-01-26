import 'package:flutter/material.dart';
import 'package:food/second_screen.dart'; // Ensure this path is correct for your SearchBar widget


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 27, 40),
      body: Stack(
        children: [
          // Main Content
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Google Title
                Padding(
                  padding: const EdgeInsets.only(top: 100.0, bottom: 50.0),
                  child: Text(
                    'Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 74,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // SearchBar
                SearchBar(),

                // Buttons
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero, // Rectangular buttons
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        'Google Search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        print("I'm Feeling Lucky button pressed");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        "I'm Feeling Lucky",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Top Navigation Bar
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Gmail Button
                  TextButton(
                    onPressed: () {
                      print("Gmail button pressed");
                    },
                    child: const Text(
                      'Gmail',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  // Images Button
                  TextButton(
                    onPressed: () {
                      print("Images button pressed");
                    },
                    child: const Text(
                      'Images',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  // Flask Icon
                  IconButton(
                    onPressed: () {
                      print("Flask icon pressed");
                    },
                    icon: const Icon(Icons.science_outlined, color: Colors.white),
                  ),

                  // Grid Icon
                  IconButton(
                    onPressed: () {
                      print("Grid icon pressed");
                    },
                    icon: const Icon(Icons.apps, color: Colors.white),
                  ),

                  // Profile Circle
                  CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: const Text(
                      'W',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // BottomAppBar with SafeArea
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // "Pakistan" slightly to the right at the bottom
              Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
                child: Text(
                  'Pakistan',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),

              // Footer Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left-aligned links
                  Row(
                    children: [
                      _FooterButton(text: 'About'),
                      _FooterButton(text: 'Advertising'),
                    ],
                  ),

                  // Right-aligned links
                  Row(
                    children: [
                      _FooterButton(text: 'Privacy'),
                      _FooterButton(text: 'Terms'),
                      _FooterButton(text: 'Settings'),
                    ],
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

// Footer Button Widget
class _FooterButton extends StatelessWidget {
  final String text;

  const _FooterButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {
          print('$text button pressed');
        },
        child: Text(
          text,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ),
    );
  }
}
