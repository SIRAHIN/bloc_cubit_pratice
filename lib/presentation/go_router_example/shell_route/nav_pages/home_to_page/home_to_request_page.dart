import 'package:flutter/material.dart';

class HomeToRequestPage extends StatelessWidget {
  const HomeToRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Text('Home To Request Page'),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Home To Request Page'),
          ],
        ),
      ),
    );
  }
}