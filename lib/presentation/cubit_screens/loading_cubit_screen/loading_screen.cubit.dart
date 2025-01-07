import 'package:bloc_practice/data/cubit/loader/loading_cubit.dart';
import 'package:bloc_practice/data/cubit/loader/loading_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingCubitScreen extends StatelessWidget {
  const LoadingCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: BlocBuilder<LoadingCubit, LoadingCubitState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                state.isLoading == true
                    ? CircularProgressIndicator()
                    : Text('Start Loading'),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    state.isLoading == true
                        ? context.read<LoadingCubit>().loadingEnd()
                        : context.read<LoadingCubit>().loadingStart();
                  },
                  child: state.isLoading == true ? Icon(Icons.stop) : Icon(Icons.start),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
