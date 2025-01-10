part of 'switch_slider_bloc.dart';


sealed class SwitchSliderEvent {}

class ToggleSwitchEvent extends SwitchSliderEvent {}

class SliderValueChangeEvent extends SwitchSliderEvent{
  final double sliderValueUpdate;

  SliderValueChangeEvent({required this.sliderValueUpdate});
}
