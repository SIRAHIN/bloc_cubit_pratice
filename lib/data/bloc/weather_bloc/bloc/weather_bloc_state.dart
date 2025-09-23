part of 'weather_bloc_bloc.dart';

enum WeatherStatus { inital, loading, success, error }

@freezed
class WeatherBlocState with _$WeatherBlocState {
  // const factory WeatherBlocState.initial() = _Initial;
  // const factory WeatherBlocState.loadedWeather(Weather weatherData) = _LoadedWeather;
  // const factory WeatherBlocState.error(String message) = _Error;

  const factory WeatherBlocState(
      {@Default(WeatherStatus.inital) WeatherStatus status,
      Weather? weather,
      String? error,}) = _WeatherBlocState;
}
