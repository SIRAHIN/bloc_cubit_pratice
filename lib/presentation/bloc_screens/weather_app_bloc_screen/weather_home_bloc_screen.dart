import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_practice/data/bloc/location_bloc/bloc/location_bloc_bloc.dart';
import 'package:bloc_practice/data/bloc/weather_bloc/bloc/weather_bloc_bloc.dart';

class WeatherHomeBlocScreen extends StatelessWidget {
  const WeatherHomeBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: MultiBlocListener(
          listeners: [
            BlocListener<LocationBlocBloc, LocationBlocState>(
              listener: (context, locationState) {
                locationState.maybeMap(
                  loaded: (loadedState) {
                    context.read<WeatherBlocBloc>().add(
                          WeatherBlocEvent.featchWeather(
                            positon: loadedState.userPosition,
                          ),
                        );
                  },
                  error: (errorValue) => print(errorValue),
                  orElse: () {},
                );
              },
            ),
          ],
          child: BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(
                  child: Text("Please wait..."),
                ),
                error: (message) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error, color: Colors.red, size: 60),
                      const SizedBox(height: 10),
                      Text(
                        "Error: $message",
                        style: const TextStyle(color: Colors.red),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Retry option
                          final locationState =
                              context.read<LocationBlocBloc>().state;
                          locationState.mapOrNull(
                            loaded: (loadedState) {
                              context.read<WeatherBlocBloc>().add(
                                    WeatherBlocEvent.featchWeather(
                                      positon: loadedState.userPosition,
                                    ),
                                  );
                            },
                          );
                        },
                        child: const Text("Retry"),
                      ),
                    ],
                  ),
                ),
                loadedWeather: (weatherData) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                          "http://openweathermap.org/img/w/${weatherData.weatherIcon}.png"),
                      const SizedBox(height: 20),
                      Text(
                        weatherData.areaName ?? 'Unknown City',
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "${weatherData.temperature?.celsius?.toStringAsFixed(1)} °C",
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Feels like: ${weatherData.tempFeelsLike?.celsius?.toStringAsFixed(1)} °C",
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Condition: ${weatherData.weatherMain ?? 'N/A'}",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
