import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes_manager.dart';

class SecondHomePage extends StatefulWidget {
  const SecondHomePage({super.key});

  @override
  State<SecondHomePage> createState() => _SecondHomePageState();
}

class _SecondHomePageState extends State<SecondHomePage> {
  double value = 0.5;
  late String? typeValue;

  // This method is used to change the color value based on the query parameter //
  // in the URL. It listens to the route information provider and updates the value //
  void changeColorValue() {
    
    final type = GoRouter.of(context).routeInformationProvider.value.uri;
    final queryParams = type.queryParameters;
    String colorChangeValue = queryParams['type']!;

    if (colorChangeValue == 'typeFromButton') {
      value = 0.9;
      setState(() {});
    } else {
      value = 0.1;
      setState(() {});
    }
  }

  @override
  initState() {

    // Get the query parameter from the URL //
    final type = GoRouter.of(context).routeInformationProvider.value.uri;
    final queryParams = type.queryParameters;
    typeValue = queryParams['type'];

    // Setup a Listener for the route to act according to its typesValue //
    GoRouter.of(context).routeInformationProvider.addListener(changeColorValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (typeValue == 'typeFromHomePage') {
      return Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('This is second Page'),
              Container(
                width: 100,
                height: 100,
                color: Colors.red.withOpacity(value),
              ),
              ElevatedButton(
                  onPressed: () async {
                    //context.go('/second-home-page');
                    RoutesManager.routerConfig
                        .go('/second-home-page?type=typeFromButton');
                  },
                  child: Text('Press Here!'))
            ],
          ),
        ),
      );
    } else {
      return SizedBox(
        child: Center(
          child: Text('This is second Page Still'),
        ),
      );
    }
  }
}
