import 'package:flutter/material.dart';

class ThirdOnbaodingScreen extends StatelessWidget {
  const ThirdOnbaodingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Center(
        child: Text(
          'Third Onboarding Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}