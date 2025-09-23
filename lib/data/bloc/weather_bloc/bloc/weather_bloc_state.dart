part of 'weather_bloc_bloc.dart';

@freezed
class WeatherBlocState with _$WeatherBlocState {
  const factory WeatherBlocState.initial() = _Initial;
  const factory WeatherBlocState.loadedWeather(Weather weatherData) = _LoadedWeather;
  const factory WeatherBlocState.error(String message) = _Error; 
}
