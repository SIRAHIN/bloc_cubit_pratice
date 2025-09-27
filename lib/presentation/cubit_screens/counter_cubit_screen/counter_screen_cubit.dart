import 'package:bloc_practice/data/cubit/counter/counter_cubit.dart';
import 'package:bloc_practice/data/cubit/counter/counter_cubit_state.dart';
import 'package:bloc_practice/presentation/cubit_screens/counter_cubit_screen/counter_btn_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreenCubit extends StatelessWidget {
  const CounterScreenCubit({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<CounterCubit, CounterCubitState>(
            listenWhen: (previous, current) {
              return previous.count != current.count;
            },
            listener: (context, state) {
              if (state.count < 0) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Negative Value Not Supported"),
                    duration: Duration(milliseconds: 300),
                  ),
                );
              } else if (state.count == 5) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Count is 5"),
                    duration: Duration(milliseconds: 300),
                  ),
                );
              }
            },
          ),
        ],
        child: BlocBuilder<CounterCubit, CounterCubitState>(
          buildWhen: (previous, current) {
            return previous.count != current.count;
          },
          builder: (context, state) {
            return SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Number Count of : ${state.count}'),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'navigate_btn',
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CounterBtnScreenCubit(),
            ),
          );
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
