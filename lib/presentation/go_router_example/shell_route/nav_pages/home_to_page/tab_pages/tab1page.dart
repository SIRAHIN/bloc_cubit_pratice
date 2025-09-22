import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/second_screen/cubit/second_screen_cubit.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/second_screen/cubit/second_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    final cubit = context.read<SecondScreenCubit>();

    // Only call API if data not loaded yet
    if (!cubit.state.isLoaded) {
      cubit.callApi();
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SecondScreenCubit, SecondScreenState>(
        builder: (context, state) {
          if (state.isLoaded) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('This is Tab 1 Page'),
                ],
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
