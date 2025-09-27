import 'package:bloc_practice/data/bloc/status_bloc/status_bloc.dart';
import 'package:bloc_practice/data/bloc/status_bloc/status_event.dart';
import 'package:bloc_practice/data/bloc/status_bloc/status_state.dart';
import 'package:bloc_practice/data/cubit/status_cubit/status_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatusBlocScreen extends StatelessWidget {
  const StatusBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: BlocBuilder<TaskStatusBloc, TaskStatusState>(
        builder: (context, taskState) {
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: () => context
                      .read<TaskStatusBloc>()
                      .add(ChangeTaskStatusEvent(TaskStatus.todo)),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    color: taskState.status == TaskStatus.todo
                        ? Colors.green
                        : Colors.grey,
                    child: Text("Todo"),
                  ),
                ),

                InkWell(
                  onTap: () => context
                      .read<TaskStatusBloc>()
                      .add(ChangeTaskStatusEvent(TaskStatus.inProgress)),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    color: taskState.status == TaskStatus.inProgress
                        ? Colors.blue
                        : Colors.grey,
                    child: Text("In Progress"),
                  ),
                ),

                InkWell(
                  onTap: () => context
                      .read<TaskStatusBloc>()
                      .add(ChangeTaskStatusEvent(TaskStatus.done)),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    color: taskState.status == TaskStatus.done
                        ? Colors.red
                        : Colors.grey,
                    child: Text("Done"),
                  ),
                ),
              ],
            );
        },
      ),
    ));
  }
}