import 'package:flutter/material.dart';
import 'landing_page.dart';  // Import the LandingPage file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),  // Use the LandingPage widget here
    );
  }
}
