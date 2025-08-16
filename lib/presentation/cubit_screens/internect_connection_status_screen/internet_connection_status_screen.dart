import 'package:bloc_practice/data/cubit/internet_status/internet_status_cubit.dart';
import 'package:bloc_practice/data/cubit/internet_status/internet_status_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetConnectionStatusScreen extends StatefulWidget {
  const InternetConnectionStatusScreen({super.key});

  @override
  State<InternetConnectionStatusScreen> createState() =>
      _InternetConnectionStatusScreenState();
}

class _InternetConnectionStatusScreenState
    extends State<InternetConnectionStatusScreen> {
  @override
  void initState() {
    super.initState();
    // trigger internet check when screen opens
    //context.read<InternetStatusCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Internet Connection Status')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<InternetStatusCubit, InternetStatusState>(
              builder: (context, state) {
                if (state is InternetStatusConnected) {
                  // ✅ Green light if connected
                  return Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          Colors.white,
                          Colors.green.shade200,
                          Colors.greenAccent.shade700,
                        ],
                        stops: const [0.0, 0.4, 1.0],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(0.6),
                          blurRadius: 50,
                          spreadRadius: 20,
                        ),
                      ],
                    ),
                  );
                } else {
                  // ❌ Yellow/Orange light if disconnected
                  return Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          Colors.white,
                          Colors.yellow.shade200,
                          Colors.orange.shade700,
                        ],
                        stops: const [0.0, 0.4, 1.0],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellow.withOpacity(0.6),
                          blurRadius: 50,
                          spreadRadius: 20,
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
            const SizedBox(height: 8),
            Container(
              width: 50,
              height: 25,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            const SizedBox(height: 4),
            Container(
              width: 20,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


