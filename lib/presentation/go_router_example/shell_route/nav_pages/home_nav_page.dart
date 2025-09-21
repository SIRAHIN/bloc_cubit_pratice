import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeNavPage extends StatelessWidget {
  const HomeNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Home Nav Page'),
            ElevatedButton(
              onPressed: () {
                // Navigate to a nested page within the Home section
                // Using context.go to navigate to a specific route
                // Replace '/home/details' with your actual nested route
                 context.push('/home/home-nested-details');
              },
              child: Text('Go nested Home Details Page'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to another page within the Home section
                // Replace '/home/request' with your actual route
                 context.push('/home-to-request');
              },
              child: Text('Go to Home Request Page'),
            ),
          ],
        ),
      ),
    );
  }
}