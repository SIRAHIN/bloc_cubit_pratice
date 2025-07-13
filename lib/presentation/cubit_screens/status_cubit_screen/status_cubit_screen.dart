import 'package:bloc_practice/data/cubit/status_cubit/status_cubit.dart';
import 'package:bloc_practice/data/cubit/status_cubit/status_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatusCubitScreen extends StatelessWidget {
  const StatusCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StatusCubit, StatusState>(
        builder: (context, state) {
          return Column(
          
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: () {
                  context.read<StatusCubit>().changeStatus(TaskStatus.todo);
                },
                child: Container(
                  color: state.status == TaskStatus.todo
                      ? Colors.green
                      : Colors.grey,
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Todo'),
                ),
              ),
              InkWell(
                onTap: () {
                  context
                      .read<StatusCubit>()
                      .changeStatus(TaskStatus.inProgress);
                },
                child: Container(
                  color: state.status == TaskStatus.inProgress
                      ? Colors.blue
                      : Colors.grey,
                  padding: const EdgeInsets.all(16.0),
                  child: Text('In Progress'),
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<StatusCubit>().changeStatus(TaskStatus.done);
                },
                child: Container(
                  color: state.status == TaskStatus.done
                      ? Colors.red
                      : Colors.grey,
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Done'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
