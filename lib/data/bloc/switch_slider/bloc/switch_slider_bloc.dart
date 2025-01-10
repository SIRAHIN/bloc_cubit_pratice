
import 'package:bloc/bloc.dart';
import 'package:bloc_practice/data/bloc/switch_slider/bloc/switch_slider_state.dart';
part 'switch_slider_event.dart';


class SwitchSlideBloc extends Bloc<SwitchSliderEvent, SwitchSliderState> {
  SwitchSlideBloc() : super(SwitchSliderState()){ {
    
    on<ToggleSwitchEvent>((event, emit) {
      emit(ToggleSwitchState(isSwitched: !state.isSwitched, sliderValue: state.sliderValue));
    });

    on<SliderValueChangeEvent>((event, emit) {
      emit(SliderState(sliderValue: event.sliderValueUpdate, isSwitched: state.isSwitched));
    });

  }
}
}


// class SliderBloc extends Bloc<SliderValueChangeEvent, SliderState>{
//   SliderBloc() : super(SliderState(sliderValue: 0.5)){
  
//     on<SliderValueChangeEvent>((event, emit) {
//       emit(SliderState(sliderValue: event.sliderValueUpdate));
//     });

//   }
 
// }
