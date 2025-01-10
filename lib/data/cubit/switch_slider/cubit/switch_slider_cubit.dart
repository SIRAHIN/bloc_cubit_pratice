import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'switch_slider_state.dart';

class SwitchSliderCubit extends Cubit<SwitchSliderCubitState> {
  SwitchSliderCubit() : super(ToggleSwitchCubitState());


  void toggleSwitch() {
    emit(ToggleSwitchCubitState(isSwitched: !state.isSwitched, sliderValue: state.sliderValue));
  }
  

  void updateSliderValue(double sliderValueUpdate){
    emit(SliderCubitState(sliderValue: sliderValueUpdate, isSwitched: state.isSwitched));
  }

  
  
}


// class SliderCubit extends Cubit<SliderCubitState>{
//   SliderCubit() : super(SliderCubitState(sliderValue: 0.5));

//   void updateSliderValue(double sliderValueUpdate){
//     emit(SliderCubitState(sliderValue: sliderValueUpdate));
//   }
 
// }
