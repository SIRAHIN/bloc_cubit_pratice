import 'package:bloc_practice/data/bloc/loader/loader_bloc.dart';
import 'package:bloc_practice/data/bloc/loader/loader_event.dart';
import 'package:bloc_practice/data/bloc/loader/loader_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingBlocScreen extends StatelessWidget {
  const LoadingBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: BlocBuilder<LoadingBloc, LoaderState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                state.isLoading == true
                    ? CircularProgressIndicator()
                    : Text('Start Loading...'),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    state.isLoading == true
                        ? context.read<LoadingBloc>().add(SetLoadingEnd())
                        : context.read<LoadingBloc>().add(SetLoadingStart());

                    
                  },
                  child: state.isLoading == true
                      ? Icon(Icons.stop)
                      : Icon(Icons.start),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
