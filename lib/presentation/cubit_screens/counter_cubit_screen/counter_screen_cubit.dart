import 'package:bloc_practice/data/bloc/counter/counter_bloc.dart';
import 'package:bloc_practice/data/bloc/counter/counter_event.dart';
import 'package:bloc_practice/data/bloc/counter/counter_state.dart';
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
      body: BlocBuilder<CounterCubit, CounterCubitState>(
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
