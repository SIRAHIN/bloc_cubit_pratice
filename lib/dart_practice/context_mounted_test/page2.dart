import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to Page 1
            Navigator.pop(context);

          },
          child: const Text('Go back to Page 1'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to Page 1
          Navigator.pushNamed(context, '/page1');
        },
        child: const Icon(Icons.navigate_before),
      ),
    );
  }
}
