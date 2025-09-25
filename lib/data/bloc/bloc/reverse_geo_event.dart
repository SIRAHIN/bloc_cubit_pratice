part of 'reverse_geo_bloc.dart';

@freezed
class ReverseGeoEvent with _$ReverseGeoEvent {
  const factory ReverseGeoEvent.getPlaceInfo({required String lat, required String lon}) = _GetPlaceInfo;
}