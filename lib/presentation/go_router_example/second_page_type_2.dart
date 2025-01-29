import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPageType2 extends StatelessWidget {
  const SecondPageType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is second Page Type 2'),
            ElevatedButton(
                onPressed: () {
                  context.go('/detailsPage', extra: 30);
                },
                child: Text('Press Here!'))
          ],
        ),
      ),
    );
  }
}
