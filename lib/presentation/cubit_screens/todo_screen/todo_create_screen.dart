import 'package:bloc_practice/data/cubit/todo_app/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCreateScreen extends StatelessWidget {
  const TodoCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController todoController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: todoController,
              decoration: InputDecoration(hintText: 'Enter to todo'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                final userText = todoController.text.trim();
                todoController.clear();
                context.read<TodoCubit>().addTodoData(userText);
                Navigator.pop(context);
              },
              child: Text('Add Todo'),
            )
          ],
        ),
      ),
    );
  }
}
