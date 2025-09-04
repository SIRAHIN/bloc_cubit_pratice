import 'package:flutter/material.dart';

class SecondOnbaodingScreen extends StatelessWidget {
  const SecondOnbaodingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Text(
          'Second Onboarding Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}