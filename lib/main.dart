import 'package:bloc_practice/data/bloc/counter/counter_bloc.dart';
import 'package:bloc_practice/data/bloc/loader/loader_bloc.dart';
import 'package:bloc_practice/data/bloc/login/login_bloc.dart';
import 'package:bloc_practice/data/cubit/counter/counter_cubit.dart';
import 'package:bloc_practice/data/cubit/loader/loading_cubit.dart';
import 'package:bloc_practice/data/cubit/login/login_cubit.dart';
import 'package:bloc_practice/data/cubit/todo_app/todo_cubit.dart';
import 'package:bloc_practice/presentation/loading_bloc_screen/loading_bloc_screen.dart';
import 'package:bloc_practice/presentation/login_bloc_screen/login_bloc_screen.dart';
import 'package:bloc_practice/presentation/login_cubit_screen/login_cubit_screen.dart';
import 'package:bloc_practice/presentation/todo_screen/todo_create_screen.dart';
import 'package:bloc_practice/presentation/todo_screen/todo_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),

        BlocProvider(create: (context)=> CounterBlocs()),

        BlocProvider(create: (context)=> LoadingCubit()),

       BlocProvider(create: (context) => LoadingBloc()),

       BlocProvider(create: (context) => TodoCubit()),

       BlocProvider(create: (context) => LoginBloc()),

       BlocProvider(create: (context)=> LoginCubit()),


       //Bloc provider 
      ],
     
      child: MaterialApp(
        title: 'Material App',
        home: LoginCubitScreen(),
      ),
    );
  }
}
