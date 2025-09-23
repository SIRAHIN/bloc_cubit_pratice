part of 'location_bloc_bloc.dart';

@freezed
class LocationBlocState with _$LocationBlocState {
  const factory LocationBlocState.initial() = _Initial;
  const factory LocationBlocState.loading() = _Loading;
  const factory LocationBlocState.loaded({required Position userPosition}) = _Loaded;
  const factory LocationBlocState.error(String message) = _Error;
}
