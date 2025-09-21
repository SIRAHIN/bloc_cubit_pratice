import 'package:flutter/material.dart';

class ProfileNavPage extends StatelessWidget {
  const ProfileNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Profile Nav Page'),
          ],
        ),
      ),
    );
  }
}