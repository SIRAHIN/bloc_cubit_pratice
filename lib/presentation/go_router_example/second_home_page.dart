import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is second Page'),
            ElevatedButton(
                onPressed: () {
                  context.go('/second-home-page/second-home-page-type-2');
                },
                child: Text('Press Here!'))
          ],
        ),
      ),
    );
  }
}
