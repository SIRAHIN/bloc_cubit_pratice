import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_response.freezed.dart';
part 'place_response.g.dart';

@freezed
class PlaceResponse with _$PlaceResponse {
  const factory PlaceResponse({
    required Place place,
    required int status,
  }) = _PlaceResponse;

  factory PlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceResponseFromJson(json);
}

@freezed
class Place with _$Place {
  const factory Place({
    required int id,
    @JsonKey(name: 'distance_within_meters')
    required double distanceWithinMeters,
    required String address,
    required String area,
    required String city,
    required String postCode,
    @JsonKey(name: 'address_bn') required String addressBn,
    @JsonKey(name: 'area_bn') required String areaBn,
    @JsonKey(name: 'city_bn') required String cityBn,
    String? district,
    String? country,
    String? division,
    @JsonKey(name: 'sub_district') String? subDistrict,
    String? pauroshova,
    String? union,
    @JsonKey(name: 'location_type') String? locationType,
    @JsonKey(name: 'address_components')
    AddressComponents? addressComponents,
    @JsonKey(name: 'area_components')
    AreaComponents? areaComponents,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) =>
      _$PlaceFromJson(json);
}

@freezed
class AddressComponents with _$AddressComponents {
  const factory AddressComponents({
    @JsonKey(name: 'place_name') String? placeName,
    String? house,
    String? road,
  }) = _AddressComponents;

  factory AddressComponents.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentsFromJson(json);
}

@freezed
class AreaComponents with _$AreaComponents {
  const factory AreaComponents({
    String? area,
    @JsonKey(name: 'sub_area') String? subArea,
  }) = _AreaComponents;

  factory AreaComponents.fromJson(Map<String, dynamic> json) =>
      _$AreaComponentsFromJson(json);
}
