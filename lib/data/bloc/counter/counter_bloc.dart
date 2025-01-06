import 'package:bloc_practice/data/bloc/counter/counter_event.dart';
import 'package:bloc_practice/data/bloc/counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocs extends Bloc<CounterEvent, CounterState>{
  CounterBlocs():super(CounterState(counter: 0)){
    
    on<IncrementEvent>((event, emit){
      emit(CounterState(counter: state.counter+1));
    });

    on<DecrementEvent>((event, emit){
      emit(CounterState(counter:state.counter-1));
    });

     on<CounterResetEvent>((event, emit){
      emit(CounterState(counter: 0));
    });
   
    
  }
}