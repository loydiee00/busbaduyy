import 'package:flutter/material.dart';
import 'add_ticket_page.dart';  // Import the AddTicketPage widget

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(92, 0, 0, 0),  // Dark gradient color
              Color.fromARGB(225, 0, 0, 0),  // Lighter gradient color
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Spacing for centering
            SizedBox(height: 20),

            // Center content with logo only
            Center(
              child: Container(
                width: 400,  // Logo width
                height: 400, // Logo height
                decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'lib/4.png',  // Path to your image
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            // Bottom buttons with less padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0), // Adjusted padding
              child: Column(
                children: [
                  // Login Button with Transparent Background
                  Container(
                    width: double.infinity,
                    height: 60, // Increased height for bigger button
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: const Color.fromARGB(255, 75, 74, 74), // Black border
                        width: 2,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddTicketPage()), // Navigate to AddTicketPage
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, // Transparent background
                        shadowColor: Colors.transparent, // No shadow
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: const Color.fromARGB(255, 75, 74, 74), // Black border
                          ),
                        ),
                      ),
                      child: Text(
                        'LOG IN',
                        style: TextStyle(
                          color: Colors.black, // Black text color
                          fontSize: 20, // Increased font size for the button
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Create Account Button with White Background
                  Container(
                    width: double.infinity,
                    height: 60, // Increased height for bigger button
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white, // Solid white background
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add account creation functionality
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Solid white background
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        'Create an account.',
                        style: TextStyle(
                          color: Colors.black, // Black text color
                          fontSize: 20, // Increased font size for the button
                        ),
                      ),
                    ),
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
