import 'package:bloc_practice/data/cubit/bottom_nav_screen_cubit/bottom_nav_screen_cubit.dart';
import 'package:bloc_practice/data/cubit/bottom_nav_screen_cubit/bottom_nav_screen_state.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/first_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/third_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'fragments/second_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fragments = [
      FirstScreen(),
      SecondScreen(),
      ThirdScreen(),
    ];
    return BlocBuilder<BottomNavScreenCubit, BottomNavScreenState>(
      builder: (context, state) {
        return Scaffold(
          body: fragments[state.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            currentIndex: state.currentIndex,
            onTap: (index) {
              // Handle navigation logic here
              context.read<BottomNavScreenCubit>().changeIndex(index);
            },
          ),
        );
      },
    );
  }
}
