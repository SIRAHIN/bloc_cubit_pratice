import 'package:bloc_practice/data/cubit/todo_app/todo_cubit_state.dart';
import 'package:bloc_practice/data/models/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<TodoCubitState> {
  TodoCubit() : super(TodoCubitState([]));

  void addTodoData(String todoText) {
    final List<TodoModel> newList = List<TodoModel>.from(state.todoData);

    if (todoText.isEmpty) {
      addError('Title Can not be empty');
      return;
    }
    newList.add(
      TodoModel(
        todoText,
        DateTime.now(),
      ),
    );
    emit(
      TodoCubitState(newList),
    );
  }

  void removedTodo(int index) {
    final List<TodoModel> newList = List<TodoModel>.from(state.todoData);

    newList.removeAt(index);

    emit(
      TodoCubitState(newList),
    );
  }

  @override
  void onChange(Change<TodoCubitState> change) {
    // TODO: implement onChange
    super.onChange(change);
    print("TodoCubit - $change");
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print('Todo Error - $error');
  }
}
