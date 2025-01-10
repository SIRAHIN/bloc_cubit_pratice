part of 'switch_slider_cubit.dart';

final class SwitchSliderCubitState {
  final bool isSwitched;
  final double sliderValue;

  SwitchSliderCubitState({ this.isSwitched = false,  this.sliderValue = 0.5});
}

final class ToggleSwitchCubitState extends SwitchSliderCubitState{

  ToggleSwitchCubitState({ super.isSwitched,  super.sliderValue});
}


final class SliderCubitState extends SwitchSliderCubitState{

 SliderCubitState({ super.sliderValue,  super.isSwitched});
  
}
