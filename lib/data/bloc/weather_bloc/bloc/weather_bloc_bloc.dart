import 'package:bloc/bloc.dart';
import 'package:bloc_practice/data/bloc/login/login_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';
part 'weather_bloc_bloc.freezed.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocState(status: WeatherStatus.inital)) {
    on<WeatherBlocEvent>((event, emit) async {
      await event.map(
        featchWeather: (featchWeather) async {
          emit(state.copyWith(status: WeatherStatus.loading));
          try {
            WeatherFactory wf =
                WeatherFactory('ee1b226bec0bae5c7ebf0661f01db8c4');
            final positionData = await Geolocator.getCurrentPosition();    
            Weather w = await wf.currentWeatherByLocation(
                positionData.latitude, positionData.longitude);
            emit(state.copyWith(status: WeatherStatus.success, weather: w));
          } catch (e) {
            emit(state.copyWith(status: WeatherStatus.error));
          }
        },
      );
    });
  }
}
