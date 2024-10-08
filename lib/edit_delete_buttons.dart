import 'package:flutter/material.dart';

class EditDeleteButtons extends StatelessWidget {
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const EditDeleteButtons({
    Key? key,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onDelete,
          child: Text(
            "Delete",
            style: TextStyle(color: Colors.white), // Set text color to white
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 117, 155, 238), // Button color
            padding: EdgeInsets.symmetric(horizontal: 25), // Adjust padding as needed
            fixedSize: Size(140, 35), // Set fixed size (width, height)
            foregroundColor: Colors.white, // Ensure text color is white
          ),
        ),
        SizedBox(width: 20),
        ElevatedButton(
          onPressed: onEdit,
          child: Text(
            "Edit",
            style: TextStyle(color: Colors.white), // Set text color to white
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 15, 30, 77), // Button color
            padding: EdgeInsets.symmetric(horizontal: 20), // Adjust padding as needed
            fixedSize: Size(140, 35), // Set fixed size (width, height)
            foregroundColor: Colors.white, // Ensure text color is white
          ),
        ),
      ],
    );
  }
}
