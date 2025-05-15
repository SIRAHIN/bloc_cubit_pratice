import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Go to Next Page'),
            ElevatedButton(
                onPressed: () {
                  context.go('/second-home-page?type=sHomePage');
                },
                child: Text('Press Here!'))
          ],
        ),
      ),
    );
  }
}
