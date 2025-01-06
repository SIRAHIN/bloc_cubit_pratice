import 'package:bloc_practice/data/bloc/counter/counter_state.dart';
import 'package:bloc_practice/data/cubit/counter/counter_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// for integer change //
class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterCubitState(count: 0));

  //increment
  void increment() => emit(CounterCubitState(count: state.count + 1));

  //decrement
  void decrement() => emit(CounterCubitState(count: state.count - 1));
}


// for text change //
class TextChangeCubit extends Cubit<String>{
  TextChangeCubit(super.initialState);

  void changeStateText() => emit('Change the inital String');
  
}
 