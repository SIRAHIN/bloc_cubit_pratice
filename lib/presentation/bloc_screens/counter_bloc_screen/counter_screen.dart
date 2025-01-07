import 'package:bloc_practice/data/bloc/counter/counter_bloc.dart';
import 'package:bloc_practice/data/bloc/counter/counter_event.dart';
import 'package:bloc_practice/data/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBlocs, CounterState>(
        builder: (context, state) {
          return SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Counter : ${state.counter}')],
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBlocs>(context).add(IncrementEvent());
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBlocs>(context).add(DecrementEvent());
            },
            child: Icon(Icons.remove),
          ),

           SizedBox(
            width: 10,
          ),

           FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBlocs>(context).add(CounterResetEvent());
            },
            child: Icon(Icons.exposure_zero),
          )
        ],
      ),
    );
  }
}
