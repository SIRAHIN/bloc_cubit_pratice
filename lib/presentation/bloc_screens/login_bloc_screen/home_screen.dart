import 'dart:ui';

import 'package:bloc_practice/data/bloc/login/login_bloc.dart';
import 'package:bloc_practice/data/bloc/login/login_event.dart';
import 'package:bloc_practice/data/bloc/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  ValueNotifier<double> top = ValueNotifier(100); // initial position
  ValueNotifier<double> left = ValueNotifier(100); // initial position

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/5400307/pexels-photo-5400307.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // draggable frosted glass card
          ValueListenableBuilder(
            valueListenable: top,
            builder: (context, value, child) {
              return ValueListenableBuilder(
                valueListenable: left,
                builder: (context, leftValue, child) {
                  return Positioned(
                    top: top.value,
                    left: left.value,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                        child: GestureDetector(
                          onPanUpdate: (details) {
                            top.value += details.delta.dy;
                            left.value += details.delta.dx;
                          },
                          child: Container(
                            width: 300,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white.withOpacity(0.15),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.4),
                                width: 1.2,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 15,
                                  offset: Offset(0, 8),
                                ),
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.2),
                                  blurRadius: 4,
                                  offset: Offset(-2, -2),
                                  spreadRadius: -2,
                                ),
                              ],
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.white.withOpacity(0.25),
                                  Colors.white.withOpacity(0.05),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "🍸 iOS Frosted Glass",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(0.9),
                                  shadows: [
                                    Shadow(
                                      offset: Offset(0, 1),
                                      blurRadius: 3,
                                      color: Colors.black.withOpacity(0.4),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),

          Positioned(
              left: 0,
              right: 0,
              top: 700,
              child: Column(
                children: [
                  RepaintBoundary(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: InkWell(
                          onTap: () {
                            context.read<LoginBloc>().add(LoginEvent.logOut());
                          },
                          child: Container(
                            height: 40,
                            width: 70,
                            color: Colors.white.withOpacity(0.15),
                            child: Icon(Icons.login),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ))

          // other UI like BlocConsumer can go here
        ],
      ),
    );
  }
}
