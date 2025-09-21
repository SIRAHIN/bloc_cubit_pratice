import 'package:flutter/material.dart';

class HomeNestedDetailsPage extends StatelessWidget {
  const HomeNestedDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('Home nested Details Page'),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Home nested Details Page'),
          ],
        ),
      ),
    );
  }
}