import 'package:flutter/material.dart';

class Tab2page extends StatelessWidget {
  const Tab2page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Tab 2 Page'),
          ],
        ),
      ),
    );
  }
}