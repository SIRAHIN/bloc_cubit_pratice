import 'package:flutter/material.dart';

class Tab1page extends StatefulWidget {
  const Tab1page({super.key});

  @override
  State<Tab1page> createState() => _Tab1pageState();
}

class _Tab1pageState extends State<Tab1page> {

  ValueNotifier<bool> visibilityFlag = ValueNotifier(false);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Future.delayed(const Duration(seconds: 2), () async {
    visibilityFlag.value = true;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: visibilityFlag,
        builder: (context, flag, _) {
          return Visibility(
            visible: visibilityFlag.value,
            replacement: CircularProgressIndicator(),
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This is Tab 1 Page'),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}