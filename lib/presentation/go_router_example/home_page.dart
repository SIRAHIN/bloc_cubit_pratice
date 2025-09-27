import 'package:bloc_practice/presentation/go_router_example/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Go to Next Page'),
            ElevatedButton(
                onPressed: () {
                  // context.go('/second-home-page?type=typeFromHomePage');
                  context.goNamed(RoutesManager.secondHomePage,
                      queryParameters: {'type': 'typeFromHomePage', 
                        'extra': '1',
                        },
                      extra: 1.toString()
                      );
                },
                child: Text('Press Here!'))
          ],
        ),
      ),
    );
  }
}
