import 'package:bloc_practice/dart_practice/context_mounted_test/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Navigate to Page 2
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyWidget()),
            );

            await Future.delayed(const Duration(seconds: 4), () {});
            
            if (!context.mounted) return;

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Going from Page 1 to Page 2')),
            );
          },
          child: const Text('Go to Page 2'),
        ),
      ),
    );
  }
}