import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';
part 'weather_bloc_bloc.freezed.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(_Initial()) {
    on<WeatherBlocEvent>((event, emit) async {
      await event.map(
        featchWeather: (featchWeather) async {
          try {
            WeatherFactory wf =
                WeatherFactory('ee1b226bec0bae5c7ebf0661f01db8c4');
            Weather w = await wf.currentWeatherByLocation(
                featchWeather.positon.latitude, featchWeather.positon.longitude);
            emit(WeatherBlocState.loadedWeather(w));
          } catch (e) {
            emit(WeatherBlocState.error(e.toString()));
          }
        },
      );
    });
  }
}
