import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'switch_slider_state.dart';

class SwitchSliderCubit extends Cubit<SwitchSliderCubitState> {
  SwitchSliderCubit() : super(SwitchSliderCubitState());


  void toggleSwitch() {
    emit(state.copyWith(isSwitched: !state.isSwitched));
  }
  

  void updateSliderValue(double sliderValueUpdate){
    emit(state.copyWith(sliderValue: sliderValueUpdate));
  }

  
  
}


// class SliderCubit extends Cubit<SliderCubitState>{
//   SliderCubit() : super(SliderCubitState(sliderValue: 0.5));

//   void updateSliderValue(double sliderValueUpdate){
//     emit(SliderCubitState(sliderValue: sliderValueUpdate));
//   }
 
// }
