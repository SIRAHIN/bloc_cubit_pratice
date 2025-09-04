import 'package:bloc_practice/data/cubit/on_boading_cubit/on_boading_cubit.dart';
import 'package:bloc_practice/data/cubit/on_boading_cubit/on_boading_state.dart';
import 'package:bloc_practice/presentation/cubit_screens/on_boading_screen/first_onboading_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/on_boading_screen/second_onbaoding_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/on_boading_screen/third_onbaoding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainOnbadingScreen extends StatelessWidget {
   MainOnbadingScreen({super.key});

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OnBoadingCubit, OnBoadingState>(
        builder: (context, state) {
          return Stack(
            children: [
              PageView(
                controller: pageController,
                children: const [
                  FirstOnboadingScreen(),
                  SecondOnbaodingScreen(),
                  ThirdOnbaodingScreen(),
                ],
                onPageChanged: (value) {
                  print('Page changed to $value');
                  context.read<OnBoadingCubit>().changePage(value);
                },
              ),
              Positioned(
                  bottom: 60,
                  right: 50,
                  left: 50,
                  child: Column(
                    children: [
                      AnimatedSmoothIndicator(
                        activeIndex: state.pageIndex,
                        count: 3,
                        effect: WormEffect(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          if (state.pageIndex < 2) {
                            pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          } else {
                            // Navigate to another screen or perform any action
                          }
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ))
            ],
          );
        },
      ),
    );
  }
}
