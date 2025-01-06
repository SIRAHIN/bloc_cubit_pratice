import 'package:bloc_practice/data/cubit/todo_app/todo_cubit.dart';
import 'package:bloc_practice/data/cubit/todo_app/todo_cubit_state.dart';
import 'package:bloc_practice/presentation/todo_screen/todo_create_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<TodoCubit, TodoCubitState>(
                builder: (context, state) {
                  if (state.todoData.isEmpty) {
                    return Center(
                      child: Text('No Todo Data'),
                    );
                  }
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.todoData.length,
                      itemBuilder: (context, index) {
                        final todoData = state.todoData[index];
                        return Card(
                          child: ListTile(
                            title: Text(todoData.todoText.toString()),
                            subtitle: Text(todoData.todoTime.toString()),
                            trailing: IconButton(
                                onPressed: () {
                                  context.read<TodoCubit>().removedTodo(index);
                                },
                                icon: CircleAvatar(child: Icon(Icons.delete))),
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TodoCreateScreen(),
              ),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
