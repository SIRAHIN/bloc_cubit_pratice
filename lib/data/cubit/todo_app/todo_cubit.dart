import 'package:bloc_practice/data/cubit/todo_app/todo_cubit_state.dart';
import 'package:bloc_practice/data/models/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<TodoCubitState> {
  TodoCubit() : super(TodoCubitState([]));

  final List<TodoModel> newListType2 = [];

  void addTodoData(String todoText) {
    //final List<TodoModel> newList = List<TodoModel>.from(state.todoData);

    

    if (todoText.isEmpty) {
      addError('Title Can not be empty');
      
      return;
    }
    newListType2.add(
      TodoModel(
        todoText,
        DateTime.now(),
      ),
    );
    emit(
      TodoCubitState(newListType2),
    );
  }

  void removedTodo(int index) {
    //final List<TodoModel> newList = List<TodoModel>.from(state.todoData);

    newListType2.removeAt(index);

    emit(
      TodoCubitState(newListType2),
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
