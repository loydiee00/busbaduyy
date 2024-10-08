import 'package:flutter/material.dart';

class AddButtonBox extends StatefulWidget {
  final VoidCallback onAdd;

  const AddButtonBox({
    Key? key,
    required this.onAdd,
  }) : super(key: key);

  @override
  _AddButtonBoxState createState() => _AddButtonBoxState();
}

class _AddButtonBoxState extends State<AddButtonBox> {
  bool _isBoxVisible = false; // State variable to manage box visibility

  void _toggleBoxVisibility() {
    setState(() {
      _isBoxVisible = !_isBoxVisible; // Toggle the visibility of the box
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 450, // Set the width of the box
          height: 150, // Set the height of the box
          decoration: BoxDecoration(
            color: Colors.transparent, // Transparent background color of the box
            borderRadius: BorderRadius.circular(10), // Rounded corners
            border: Border.all(
              color: const Color.fromARGB(255, 255, 255, 255), // Border color
              width: 2, // Border width
            ),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
                blurRadius: 10,
                offset: Offset(0, 5), // Shadow position
              ),
            ],
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                _toggleBoxVisibility(); // Toggle visibility on button press
                widget.onAdd(); // Call the provided onAdd callback
              },
              child: Icon(
                Icons.add,
                size: 40, // Size of the plus icon
                color: const Color.fromARGB(255, 248, 248, 248), // Change icon color to match the border
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: Colors.transparent, // Transparent button background
                padding: EdgeInsets.all(20), // Padding for the button
                side: BorderSide(
                  color: const Color.fromARGB(255, 250, 250, 250), // Button border color
                  width: 2, // Button border width
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10), // Space between the button and the additional box
        if (_isBoxVisible) // Conditionally render the box
          Container(
            width: 450, // Set width for the additional box
            height: 100, // Set height for the additional box
            decoration: BoxDecoration(
              color: Colors.white, // Set the color of the new box
              borderRadius: BorderRadius.circular(10), // Rounded corners for the new box
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5), // Shadow position for the new box
                ),
              ],
            ),
            child: Center(
              child: Text(
                'New Box Appeared!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
