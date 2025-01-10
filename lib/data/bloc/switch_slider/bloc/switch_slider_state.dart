class SwitchSliderState {
 
  bool isSwitched;
  double sliderValue;

  SwitchSliderState({this.isSwitched = false, this.sliderValue = 0.5});

}


class ToggleSwitchState  extends SwitchSliderState{
   
  
 // ToggleSwitchState() : super();
  ToggleSwitchState({super.isSwitched, super.sliderValue});
}


class SliderState extends SwitchSliderState{


 // SliderState() : super();
  SliderState({super.sliderValue, super.isSwitched});
}