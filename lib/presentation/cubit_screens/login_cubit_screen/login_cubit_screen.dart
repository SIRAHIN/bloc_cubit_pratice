import 'package:bloc_practice/data/cubit/login/login_cubit.dart';
import 'package:bloc_practice/data/cubit/login/login_cubit_state.dart';
import 'package:bloc_practice/presentation/cubit_screens/login_cubit_screen/cubit_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubitScreen extends StatefulWidget {
  const LoginCubitScreen({super.key});

  @override
  State<LoginCubitScreen> createState() => _LoginBlocScreenState();
}

class _LoginBlocScreenState extends State<LoginCubitScreen> {
  late final TextEditingController _userEmailCtr;
  late final TextEditingController _userPasswordCtr;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userEmailCtr = TextEditingController();
    _userPasswordCtr = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Disposed Called Here ");
    _userEmailCtr.dispose();
    _userPasswordCtr.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginCubitState>(
        listener: (context, state) {
          if (state is LoginCubitFailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorText),
              ),
            );
          }

          if (state is LoginCubitSuccessState) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CubitHomeScreen(
                  onPostSelected: (postId) {
                    // if (postId == 1) {
                    //   return 'Success';
                    // } else {
                    //   return ''
                    // }
                    print(postId);
                  },
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is LoginCubitLoadinState) {
            return Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _userEmailCtr,
                  decoration: InputDecoration(hintText: 'Enter Your Email'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _userPasswordCtr,
                  decoration: InputDecoration(hintText: 'Enter your Password'),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<LoginCubit>().loginRequested(
                        userEmail: _userEmailCtr.text,
                        userPassowrd: _userPasswordCtr.text);
                  },
                  child: Icon(Icons.arrow_forward_ios_rounded),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
