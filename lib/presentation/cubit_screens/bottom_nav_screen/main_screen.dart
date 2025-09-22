import 'package:bloc_practice/data/cubit/bottom_nav_screen_cubit/bottom_nav_screen_cubit.dart';
import 'package:bloc_practice/data/cubit/bottom_nav_screen_cubit/bottom_nav_screen_state.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/first_screen/screen/first_screen.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/third_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'fragments/second_screen/screen/second_screen.dart';

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
        int currentIndex = state.currentIndex;
        return Scaffold(
            body: fragments[state.currentIndex],
            bottomNavigationBar: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Row(
                    //mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            BlocProvider.of<BottomNavScreenCubit>(context)
                                .changeIndex(0);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 90,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == 0
                                      ? Colors.greenAccent.shade100
                                      : Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: currentIndex == 0
                                        ? Colors.green
                                        : Colors.grey,
                                  ),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                        color: currentIndex == 0
                                            ? Colors.green
                                            : Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            BlocProvider.of<BottomNavScreenCubit>(context)
                                .changeIndex(1);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 90,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == 1
                                      ? Colors.greenAccent.shade100
                                      : Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: currentIndex == 1
                                        ? Colors.green
                                        : Colors.grey,
                                  ),
                                  Text(
                                    "Profile",
                                    style: TextStyle(
                                        color: currentIndex == 1
                                            ? Colors.green
                                            : Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            BlocProvider.of<BottomNavScreenCubit>(context)
                                .changeIndex(2);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 90,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == 2
                                      ? Colors.greenAccent.shade100
                                      : Colors.white),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.settings,
                                    color: currentIndex == 2
                                        ? Colors.green
                                        : Colors.grey,
                                  ),
                                  Text(
                                    "Settings",
                                    style: TextStyle(
                                        color: currentIndex == 2
                                            ? Colors.green
                                            : Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ));
      },
    );
  }
}

// BottomNavigationBar(
//             items: const [
//               BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.search), label: 'Search'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.person), label: 'Profile'),
//             ],
//             currentIndex: state.currentIndex,
//             onTap: (index) {
//               // Handle navigation logic here
//               context.read<BottomNavScreenCubit>().changeIndex(index);
//             },
//           ),


// BottomNavigationBar(
//                   items: const [
//                     BottomNavigationBarItem(
//                         icon: Icon(CupertinoIcons.home), label: 'Home'),
//                     BottomNavigationBarItem(
//                         icon: Icon(CupertinoIcons.search), label: 'Search'),
//                     BottomNavigationBarItem(
//                         icon: Icon(CupertinoIcons.person), label: 'Profile'),
//                   ],
//                   currentIndex: state.currentIndex,
//                   onTap: (index) {
//                     // Handle navigation logic here
//                     context.read<BottomNavScreenCubit>().changeIndex(index);
//                   },
//                 ),