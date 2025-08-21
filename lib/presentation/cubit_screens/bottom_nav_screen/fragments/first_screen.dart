import 'package:bloc_practice/dart_practice/call_back_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('First Screen'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2));
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Refresh Complete'),
              content: const Text('The screen has been refreshed.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        },
        child: ListView(
          physics:
              const AlwaysScrollableScrollPhysics(), // ensures pull-to-refresh works even if content is small
          children: const [
            Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'First Screen',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
