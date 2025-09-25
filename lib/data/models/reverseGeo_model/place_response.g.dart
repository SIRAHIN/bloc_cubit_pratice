// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceResponseImpl _$$PlaceResponseImplFromJson(Map<String, dynamic> json) =>
    _$PlaceResponseImpl(
      place: Place.fromJson(json['place'] as Map<String, dynamic>),
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$PlaceResponseImplToJson(_$PlaceResponseImpl instance) =>
    <String, dynamic>{
      'place': instance.place,
      'status': instance.status,
    };

_$PlaceImpl _$$PlaceImplFromJson(Map<String, dynamic> json) => _$PlaceImpl(
      id: (json['id'] as num).toInt(),
      distanceWithinMeters: (json['distance_within_meters'] as num).toDouble(),
      address: json['address'] as String,
      area: json['area'] as String,
      city: json['city'] as String,
      postCode: json['postCode'] as String,
      addressBn: json['address_bn'] as String,
      areaBn: json['area_bn'] as String,
      cityBn: json['city_bn'] as String,
      district: json['district'] as String?,
      country: json['country'] as String?,
      division: json['division'] as String?,
      subDistrict: json['sub_district'] as String?,
      pauroshova: json['pauroshova'] as String?,
      union: json['union'] as String?,
      locationType: json['location_type'] as String?,
      addressComponents: json['address_components'] == null
          ? null
          : AddressComponents.fromJson(
              json['address_components'] as Map<String, dynamic>),
      areaComponents: json['area_components'] == null
          ? null
          : AreaComponents.fromJson(
              json['area_components'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'distance_within_meters': instance.distanceWithinMeters,
      'address': instance.address,
      'area': instance.area,
      'city': instance.city,
      'postCode': instance.postCode,
      'address_bn': instance.addressBn,
      'area_bn': instance.areaBn,
      'city_bn': instance.cityBn,
      'district': instance.district,
      'country': instance.country,
      'division': instance.division,
      'sub_district': instance.subDistrict,
      'pauroshova': instance.pauroshova,
      'union': instance.union,
      'location_type': instance.locationType,
      'address_components': instance.addressComponents,
      'area_components': instance.areaComponents,
    };

_$AddressComponentsImpl _$$AddressComponentsImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressComponentsImpl(
      placeName: json['place_name'] as String?,
      house: json['house'] as String?,
      road: json['road'] as String?,
    );

Map<String, dynamic> _$$AddressComponentsImplToJson(
        _$AddressComponentsImpl instance) =>
    <String, dynamic>{
      'place_name': instance.placeName,
      'house': instance.house,
      'road': instance.road,
    };

_$AreaComponentsImpl _$$AreaComponentsImplFromJson(Map<String, dynamic> json) =>
    _$AreaComponentsImpl(
      area: json['area'] as String?,
      subArea: json['sub_area'] as String?,
    );

Map<String, dynamic> _$$AreaComponentsImplToJson(
        _$AreaComponentsImpl instance) =>
    <String, dynamic>{
      'area': instance.area,
      'sub_area': instance.subArea,
    };
