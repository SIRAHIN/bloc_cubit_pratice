part of 'reverse_geo_bloc.dart';

@freezed
class ReverseGeoState with _$ReverseGeoState {
  const factory ReverseGeoState.initial() = _Initial;
    const factory ReverseGeoState.loading() = _Loading;
      const factory ReverseGeoState.loaded({required PlaceResponse placeInfo}) = _Loaded;
        const factory ReverseGeoState.error() = _error;
}
