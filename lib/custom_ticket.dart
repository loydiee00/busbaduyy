import 'package:flutter/material.dart';

class CustomTicket extends StatelessWidget {
  final double height;
  final double width;

  // Constructor to accept height and width parameters
  CustomTicket({this.height = 300, this.width = 400});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height, // Set custom height
        width: width,   // Set custom width
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            // Top row with locations and dots
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cubao',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.radio_button_unchecked, size: 20),
                    Container(
                      width: 120,
                      height: 2, // Increased height for thickness
                      color: Colors.black,
                    ),
                    Icon(Icons.circle, size: 20),
                  ],
                ),
                Text(
                  'Dagupan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Middle custom line with bold center
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 2, // Increased height for thickness
                    color: Colors.black, // Left line
                  ),
                ),
                Container(
                  width: 80,
                  height: 2, // Bold black line in the middle
                  color: Colors.black,
                ),
                Expanded(
                  child: Container(
                    height: 2, // Increased height for thickness
                    color: Colors.black, // Right line
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Ticket details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bus No."),
                    SizedBox(height: 5),
                    Text("Service Class"),
                    SizedBox(height: 5),
                    Text("Departure"),
                  ],
                ),
                // Right Column - Centered with fixed width
                Container(
                  width: 300, // Set a fixed width for the right column
                  child: Center( // Center the content vertically in the right column
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Trip Hours"),
                        SizedBox(height: 5),
                        Text("Base Fare"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
