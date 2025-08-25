import 'package:bloc_practice/dart_practice/depencency_injection/api_service.dart';
import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/dart_practice/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPageType2 extends StatefulWidget {
  const SecondPageType2({super.key});

  @override
  State<SecondPageType2> createState() => _SecondPageType2State();
}

class _SecondPageType2State extends State<SecondPageType2> {


  @override
  void initState() {
    // TODO: implement initState
    final type = GoRouter.of(context).routeInformationProvider.value.uri;
    final queryParams = type.queryParameters;
    print('QueryParams Value: ${type.queryParameters['extra']}');
    super.initState();
  }

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
                  getIt<ApiServiceTest>().fetchData();
                },
                child: Text('Press Here!'))
          ],
        ),
      ),
    );
  }
}
