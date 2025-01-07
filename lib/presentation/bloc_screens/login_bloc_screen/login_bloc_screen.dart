import 'package:bloc_practice/data/bloc/login/login_bloc.dart';
import 'package:bloc_practice/data/bloc/login/login_event.dart';
import 'package:bloc_practice/data/bloc/login/login_state.dart';
import 'package:bloc_practice/presentation/bloc_screens/login_bloc_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocScreen extends StatefulWidget {
  const LoginBlocScreen({super.key});

  @override
  State<LoginBlocScreen> createState() => _LoginBlocScreenState();
}

class _LoginBlocScreenState extends State<LoginBlocScreen> {
  
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
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginFailuer) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.failuerText),
              ),
            );
          }

          if (state is LoginSuccess) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          }
        },
        builder: (context, state) {
          if (state is LoginLoading) {
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
                    context.read<LoginBloc>().add(
                          LoginRequested(
                              userEmail: _userEmailCtr.text,
                              userPassword: _userPasswordCtr.text),
                        );
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
