import 'package:flutter/material.dart';

class DagupanCubao extends StatefulWidget {
  @override
  _DagupanCubaoState createState() => _DagupanCubaoState();
}

class _DagupanCubaoState extends State<DagupanCubao> {
  bool isCubaoSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[800], // Background color
        borderRadius: BorderRadius.circular(30), // Rounded edges
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Cubao Button
          GestureDetector(
            onTap: () {
              setState(() {
                isCubaoSelected = true;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
              decoration: BoxDecoration(
                color: isCubaoSelected ? const Color.fromARGB(255, 136, 173, 241) : const Color.fromARGB(255, 4, 18, 80),
                borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),
              ),
              child: Text(
                'Cubao',
                style: TextStyle(
                  color: isCubaoSelected ? Colors.white : Colors.grey[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Dagupan Button
          GestureDetector(
            onTap: () {
              setState(() {
                isCubaoSelected = false;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
              decoration: BoxDecoration(
                color: !isCubaoSelected ? const Color.fromARGB(255, 136, 173, 241) : const Color.fromARGB(255, 7, 8, 95),
                borderRadius: BorderRadius.horizontal(right: Radius.circular(30)),
              ),
              child: Text(
                'Dagupan',
                style: TextStyle(
                  color: !isCubaoSelected ? const Color.fromARGB(255, 255, 255, 255) : const Color.fromARGB(255, 189, 189, 189),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
