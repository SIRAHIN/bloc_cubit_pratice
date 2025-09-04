import 'package:flutter/material.dart';

class FirstOnboadingScreen extends StatelessWidget {
  const FirstOnboadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Center(
        child: Text(
          'First Onboarding Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}