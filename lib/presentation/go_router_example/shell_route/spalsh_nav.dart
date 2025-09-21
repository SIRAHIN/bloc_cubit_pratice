import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SpalshNav extends StatefulWidget {
  const SpalshNav({super.key});

  @override
  State<SpalshNav> createState() => _SpalshNavState();
}

class _SpalshNavState extends State<SpalshNav> {

@override
void initState() {
  super.initState();
  Future.delayed(const Duration(seconds: 2), () async {
    // Navigate using GoRouter instead of Navigator
     context.go('/home');
  });
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
            Text('This is Splash Nav Page'),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}