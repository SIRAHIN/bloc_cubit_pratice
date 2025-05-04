part of 'switch_slider_cubit.dart';

 class SwitchSliderCubitState {
  final bool isSwitched;
  final double sliderValue;

  SwitchSliderCubitState({this.isSwitched = false, this.sliderValue = 0.5});

   SwitchSliderCubitState copyWith({
    bool? isSwitched,
    double? sliderValue,
  }) {
    return SwitchSliderCubitState(
        isSwitched: isSwitched ?? this.isSwitched,
        sliderValue: sliderValue ?? this.sliderValue);
  }
}

// final class ToggleSwitchCubitState extends SwitchSliderCubitState {
//   ToggleSwitchCubitState({super.isSwitched, super.sliderValue});
// }

// final class SliderCubitState extends SwitchSliderCubitState {
//   SliderCubitState({super.sliderValue, super.isSwitched});
// }
