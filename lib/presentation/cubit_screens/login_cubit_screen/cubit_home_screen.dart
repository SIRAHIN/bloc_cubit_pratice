import 'package:bloc_practice/data/cubit/login/login_cubit.dart';
import 'package:bloc_practice/data/cubit/login/login_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitHomeScreen extends StatelessWidget {
  final Function(int postId)? onPostSelected;

  const CubitHomeScreen({super.key, this.onPostSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<LoginCubit, LoginCubitState>(
          listener: (context, state) {
            if (state is LoginCubitInitialState) {
              Navigator.of(context).pop();
            }

            if (state is LoginCubitFailureState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorText),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is LoginCubitLoadinState) {
              return CircularProgressIndicator();
            } else if (state is LoginCubitSuccessState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.successText),
                  ElevatedButton(
                    onPressed: () {
                      onPostSelected!.call(1);
                      context.read<LoginCubit>().logoutRequested();
                    },
                    child: Icon(Icons.login),
                  )
                ],
              );
            } else {
              return SizedBox();
            }
          },
        ),
      ),
    );
  }
}
