import 'package:bloc_practice/data/bloc/login/login_bloc.dart';
import 'package:bloc_practice/data/bloc/login/login_event.dart';
import 'package:bloc_practice/data/bloc/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginInitial) {
              Navigator.of(context).pop();
            }

            if (state is LoginFailuer) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.failuerText),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is LoginLoading) {
              return CircularProgressIndicator();
            } else if (state is LoginSuccess) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.successText),
                  ElevatedButton(
                    onPressed: () {
                      context.read<LoginBloc>().add(
                            LogoutRequested(),
                          );
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
