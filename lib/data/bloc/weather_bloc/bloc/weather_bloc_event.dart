part of 'weather_bloc_bloc.dart';

@freezed
class WeatherBlocEvent with _$WeatherBlocEvent {
  const factory WeatherBlocEvent.featchWeather({required Position positon}) = _featchWeather;
}