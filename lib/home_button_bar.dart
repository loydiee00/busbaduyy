import 'package:flutter/material.dart';

class HomeButtonBar extends StatelessWidget {
  final VoidCallback onHomePressed;
  final VoidCallback onAddPressed;
  final VoidCallback onListPressed;

  HomeButtonBar({
    required this.onHomePressed,
    required this.onAddPressed,
    required this.onListPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400, // Set a fixed width for the box
      height: 60, // Set a fixed height for the box
      padding: EdgeInsets.all(2), // Padding inside the box
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 35, 45, 85), // Set a solid background color for the box
        border: Border.all(
          color: const Color.fromARGB(255, 255, 255, 255), // Black border for the box
          width: 2, // Border width
        ),
        borderRadius: BorderRadius.circular(40), // Rounded corners
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Home Button
          GestureDetector(
            onTap: onHomePressed,
            child: Container(
              padding: EdgeInsets.all(15), // Padding for the button
              child: Icon(
                Icons.home_outlined,
                size: 30,
                color: const Color.fromARGB(255, 255, 255, 255), // Icon color
              ),
            ),
          ),

          // Add Button (center, larger and highlighted)
          GestureDetector(
            onTap: onAddPressed,
            child: Container(
              padding: EdgeInsets.all(15), // Padding for the button
              child: Icon(
                Icons.add_box_outlined,
                size: 30,
                color: const Color.fromARGB(255, 255, 255, 255), // Icon color
              ),
            ),
          ),

          // List Button
          GestureDetector(
            onTap: onListPressed,
            child: Container(
              padding: EdgeInsets.all(15), // Padding for the button
              child: Icon(
                Icons.receipt_long_outlined,
                size: 30,
                color: const Color.fromARGB(255, 255, 255, 255), // Icon color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
