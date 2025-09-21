import 'package:flutter/material.dart';

class SettingsNavPage extends StatelessWidget {
  const SettingsNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Settings Nav Page'),
          ],
        ),
      ),
    );
  }
}