import 'package:bloc_practice/data/cubit/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBtnScreenCubit extends StatelessWidget {
  const CounterBtnScreenCubit({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment_btn',
            onPressed: () {
              context.read<CounterCubit>().increment();
              //BlocProvider.of<CounterCubit>(context).increment();
              //context.read<TextChangeCubit>().changeStateText();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: 'decrement_btn',
            onPressed: () {
              context.read<CounterCubit>().decrement();
              //BlocProvider.of<CounterCubit>(context).decrement();
            },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
