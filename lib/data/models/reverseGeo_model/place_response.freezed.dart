// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceResponse _$PlaceResponseFromJson(Map<String, dynamic> json) {
  return _PlaceResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaceResponse {
  Place get place => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  /// Serializes this PlaceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceResponseCopyWith<PlaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceResponseCopyWith<$Res> {
  factory $PlaceResponseCopyWith(
          PlaceResponse value, $Res Function(PlaceResponse) then) =
      _$PlaceResponseCopyWithImpl<$Res, PlaceResponse>;
  @useResult
  $Res call({Place place, int status});

  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class _$PlaceResponseCopyWithImpl<$Res, $Val extends PlaceResponse>
    implements $PlaceResponseCopyWith<$Res> {
  _$PlaceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PlaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res> get place {
    return $PlaceCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceResponseImplCopyWith<$Res>
    implements $PlaceResponseCopyWith<$Res> {
  factory _$$PlaceResponseImplCopyWith(
          _$PlaceResponseImpl value, $Res Function(_$PlaceResponseImpl) then) =
      __$$PlaceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Place place, int status});

  @override
  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class __$$PlaceResponseImplCopyWithImpl<$Res>
    extends _$PlaceResponseCopyWithImpl<$Res, _$PlaceResponseImpl>
    implements _$$PlaceResponseImplCopyWith<$Res> {
  __$$PlaceResponseImplCopyWithImpl(
      _$PlaceResponseImpl _value, $Res Function(_$PlaceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? status = null,
  }) {
    return _then(_$PlaceResponseImpl(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceResponseImpl implements _PlaceResponse {
  const _$PlaceResponseImpl({required this.place, required this.status});

  factory _$PlaceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceResponseImplFromJson(json);

  @override
  final Place place;
  @override
  final int status;

  @override
  String toString() {
    return 'PlaceResponse(place: $place, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceResponseImpl &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, place, status);

  /// Create a copy of PlaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceResponseImplCopyWith<_$PlaceResponseImpl> get copyWith =>
      __$$PlaceResponseImplCopyWithImpl<_$PlaceResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceResponseImplToJson(
      this,
    );
  }
}

abstract class _PlaceResponse implements PlaceResponse {
  const factory _PlaceResponse(
      {required final Place place,
      required final int status}) = _$PlaceResponseImpl;

  factory _PlaceResponse.fromJson(Map<String, dynamic> json) =
      _$PlaceResponseImpl.fromJson;

  @override
  Place get place;
  @override
  int get status;

  /// Create a copy of PlaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceResponseImplCopyWith<_$PlaceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_within_meters')
  double get distanceWithinMeters => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get postCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_bn')
  String get addressBn => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_bn')
  String get areaBn => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_bn')
  String get cityBn => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get division => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_district')
  String? get subDistrict => throw _privateConstructorUsedError;
  String? get pauroshova => throw _privateConstructorUsedError;
  String? get union => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_type')
  String? get locationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_components')
  AddressComponents? get addressComponents =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'area_components')
  AreaComponents? get areaComponents => throw _privateConstructorUsedError;

  /// Serializes this Place to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'distance_within_meters') double distanceWithinMeters,
      String address,
      String area,
      String city,
      String postCode,
      @JsonKey(name: 'address_bn') String addressBn,
      @JsonKey(name: 'area_bn') String areaBn,
      @JsonKey(name: 'city_bn') String cityBn,
      String? district,
      String? country,
      String? division,
      @JsonKey(name: 'sub_district') String? subDistrict,
      String? pauroshova,
      String? union,
      @JsonKey(name: 'location_type') String? locationType,
      @JsonKey(name: 'address_components') AddressComponents? addressComponents,
      @JsonKey(name: 'area_components') AreaComponents? areaComponents});

  $AddressComponentsCopyWith<$Res>? get addressComponents;
  $AreaComponentsCopyWith<$Res>? get areaComponents;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? distanceWithinMeters = null,
    Object? address = null,
    Object? area = null,
    Object? city = null,
    Object? postCode = null,
    Object? addressBn = null,
    Object? areaBn = null,
    Object? cityBn = null,
    Object? district = freezed,
    Object? country = freezed,
    Object? division = freezed,
    Object? subDistrict = freezed,
    Object? pauroshova = freezed,
    Object? union = freezed,
    Object? locationType = freezed,
    Object? addressComponents = freezed,
    Object? areaComponents = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      distanceWithinMeters: null == distanceWithinMeters
          ? _value.distanceWithinMeters
          : distanceWithinMeters // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
      addressBn: null == addressBn
          ? _value.addressBn
          : addressBn // ignore: cast_nullable_to_non_nullable
              as String,
      areaBn: null == areaBn
          ? _value.areaBn
          : areaBn // ignore: cast_nullable_to_non_nullable
              as String,
      cityBn: null == cityBn
          ? _value.cityBn
          : cityBn // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      division: freezed == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String?,
      subDistrict: freezed == subDistrict
          ? _value.subDistrict
          : subDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      pauroshova: freezed == pauroshova
          ? _value.pauroshova
          : pauroshova // ignore: cast_nullable_to_non_nullable
              as String?,
      union: freezed == union
          ? _value.union
          : union // ignore: cast_nullable_to_non_nullable
              as String?,
      locationType: freezed == locationType
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as String?,
      addressComponents: freezed == addressComponents
          ? _value.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as AddressComponents?,
      areaComponents: freezed == areaComponents
          ? _value.areaComponents
          : areaComponents // ignore: cast_nullable_to_non_nullable
              as AreaComponents?,
    ) as $Val);
  }

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressComponentsCopyWith<$Res>? get addressComponents {
    if (_value.addressComponents == null) {
      return null;
    }

    return $AddressComponentsCopyWith<$Res>(_value.addressComponents!, (value) {
      return _then(_value.copyWith(addressComponents: value) as $Val);
    });
  }

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaComponentsCopyWith<$Res>? get areaComponents {
    if (_value.areaComponents == null) {
      return null;
    }

    return $AreaComponentsCopyWith<$Res>(_value.areaComponents!, (value) {
      return _then(_value.copyWith(areaComponents: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
          _$PlaceImpl value, $Res Function(_$PlaceImpl) then) =
      __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'distance_within_meters') double distanceWithinMeters,
      String address,
      String area,
      String city,
      String postCode,
      @JsonKey(name: 'address_bn') String addressBn,
      @JsonKey(name: 'area_bn') String areaBn,
      @JsonKey(name: 'city_bn') String cityBn,
      String? district,
      String? country,
      String? division,
      @JsonKey(name: 'sub_district') String? subDistrict,
      String? pauroshova,
      String? union,
      @JsonKey(name: 'location_type') String? locationType,
      @JsonKey(name: 'address_components') AddressComponents? addressComponents,
      @JsonKey(name: 'area_components') AreaComponents? areaComponents});

  @override
  $AddressComponentsCopyWith<$Res>? get addressComponents;
  @override
  $AreaComponentsCopyWith<$Res>? get areaComponents;
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
      _$PlaceImpl _value, $Res Function(_$PlaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? distanceWithinMeters = null,
    Object? address = null,
    Object? area = null,
    Object? city = null,
    Object? postCode = null,
    Object? addressBn = null,
    Object? areaBn = null,
    Object? cityBn = null,
    Object? district = freezed,
    Object? country = freezed,
    Object? division = freezed,
    Object? subDistrict = freezed,
    Object? pauroshova = freezed,
    Object? union = freezed,
    Object? locationType = freezed,
    Object? addressComponents = freezed,
    Object? areaComponents = freezed,
  }) {
    return _then(_$PlaceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      distanceWithinMeters: null == distanceWithinMeters
          ? _value.distanceWithinMeters
          : distanceWithinMeters // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postCode: null == postCode
          ? _value.postCode
          : postCode // ignore: cast_nullable_to_non_nullable
              as String,
      addressBn: null == addressBn
          ? _value.addressBn
          : addressBn // ignore: cast_nullable_to_non_nullable
              as String,
      areaBn: null == areaBn
          ? _value.areaBn
          : areaBn // ignore: cast_nullable_to_non_nullable
              as String,
      cityBn: null == cityBn
          ? _value.cityBn
          : cityBn // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      division: freezed == division
          ? _value.division
          : division // ignore: cast_nullable_to_non_nullable
              as String?,
      subDistrict: freezed == subDistrict
          ? _value.subDistrict
          : subDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      pauroshova: freezed == pauroshova
          ? _value.pauroshova
          : pauroshova // ignore: cast_nullable_to_non_nullable
              as String?,
      union: freezed == union
          ? _value.union
          : union // ignore: cast_nullable_to_non_nullable
              as String?,
      locationType: freezed == locationType
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as String?,
      addressComponents: freezed == addressComponents
          ? _value.addressComponents
          : addressComponents // ignore: cast_nullable_to_non_nullable
              as AddressComponents?,
      areaComponents: freezed == areaComponents
          ? _value.areaComponents
          : areaComponents // ignore: cast_nullable_to_non_nullable
              as AreaComponents?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceImpl implements _Place {
  const _$PlaceImpl(
      {required this.id,
      @JsonKey(name: 'distance_within_meters')
      required this.distanceWithinMeters,
      required this.address,
      required this.area,
      required this.city,
      required this.postCode,
      @JsonKey(name: 'address_bn') required this.addressBn,
      @JsonKey(name: 'area_bn') required this.areaBn,
      @JsonKey(name: 'city_bn') required this.cityBn,
      this.district,
      this.country,
      this.division,
      @JsonKey(name: 'sub_district') this.subDistrict,
      this.pauroshova,
      this.union,
      @JsonKey(name: 'location_type') this.locationType,
      @JsonKey(name: 'address_components') this.addressComponents,
      @JsonKey(name: 'area_components') this.areaComponents});

  factory _$PlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'distance_within_meters')
  final double distanceWithinMeters;
  @override
  final String address;
  @override
  final String area;
  @override
  final String city;
  @override
  final String postCode;
  @override
  @JsonKey(name: 'address_bn')
  final String addressBn;
  @override
  @JsonKey(name: 'area_bn')
  final String areaBn;
  @override
  @JsonKey(name: 'city_bn')
  final String cityBn;
  @override
  final String? district;
  @override
  final String? country;
  @override
  final String? division;
  @override
  @JsonKey(name: 'sub_district')
  final String? subDistrict;
  @override
  final String? pauroshova;
  @override
  final String? union;
  @override
  @JsonKey(name: 'location_type')
  final String? locationType;
  @override
  @JsonKey(name: 'address_components')
  final AddressComponents? addressComponents;
  @override
  @JsonKey(name: 'area_components')
  final AreaComponents? areaComponents;

  @override
  String toString() {
    return 'Place(id: $id, distanceWithinMeters: $distanceWithinMeters, address: $address, area: $area, city: $city, postCode: $postCode, addressBn: $addressBn, areaBn: $areaBn, cityBn: $cityBn, district: $district, country: $country, division: $division, subDistrict: $subDistrict, pauroshova: $pauroshova, union: $union, locationType: $locationType, addressComponents: $addressComponents, areaComponents: $areaComponents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.distanceWithinMeters, distanceWithinMeters) ||
                other.distanceWithinMeters == distanceWithinMeters) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postCode, postCode) ||
                other.postCode == postCode) &&
            (identical(other.addressBn, addressBn) ||
                other.addressBn == addressBn) &&
            (identical(other.areaBn, areaBn) || other.areaBn == areaBn) &&
            (identical(other.cityBn, cityBn) || other.cityBn == cityBn) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.subDistrict, subDistrict) ||
                other.subDistrict == subDistrict) &&
            (identical(other.pauroshova, pauroshova) ||
                other.pauroshova == pauroshova) &&
            (identical(other.union, union) || other.union == union) &&
            (identical(other.locationType, locationType) ||
                other.locationType == locationType) &&
            (identical(other.addressComponents, addressComponents) ||
                other.addressComponents == addressComponents) &&
            (identical(other.areaComponents, areaComponents) ||
                other.areaComponents == areaComponents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      distanceWithinMeters,
      address,
      area,
      city,
      postCode,
      addressBn,
      areaBn,
      cityBn,
      district,
      country,
      division,
      subDistrict,
      pauroshova,
      union,
      locationType,
      addressComponents,
      areaComponents);

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceImplToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {required final int id,
      @JsonKey(name: 'distance_within_meters')
      required final double distanceWithinMeters,
      required final String address,
      required final String area,
      required final String city,
      required final String postCode,
      @JsonKey(name: 'address_bn') required final String addressBn,
      @JsonKey(name: 'area_bn') required final String areaBn,
      @JsonKey(name: 'city_bn') required final String cityBn,
      final String? district,
      final String? country,
      final String? division,
      @JsonKey(name: 'sub_district') final String? subDistrict,
      final String? pauroshova,
      final String? union,
      @JsonKey(name: 'location_type') final String? locationType,
      @JsonKey(name: 'address_components')
      final AddressComponents? addressComponents,
      @JsonKey(name: 'area_components')
      final AreaComponents? areaComponents}) = _$PlaceImpl;

  factory _Place.fromJson(Map<String, dynamic> json) = _$PlaceImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'distance_within_meters')
  double get distanceWithinMeters;
  @override
  String get address;
  @override
  String get area;
  @override
  String get city;
  @override
  String get postCode;
  @override
  @JsonKey(name: 'address_bn')
  String get addressBn;
  @override
  @JsonKey(name: 'area_bn')
  String get areaBn;
  @override
  @JsonKey(name: 'city_bn')
  String get cityBn;
  @override
  String? get district;
  @override
  String? get country;
  @override
  String? get division;
  @override
  @JsonKey(name: 'sub_district')
  String? get subDistrict;
  @override
  String? get pauroshova;
  @override
  String? get union;
  @override
  @JsonKey(name: 'location_type')
  String? get locationType;
  @override
  @JsonKey(name: 'address_components')
  AddressComponents? get addressComponents;
  @override
  @JsonKey(name: 'area_components')
  AreaComponents? get areaComponents;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressComponents _$AddressComponentsFromJson(Map<String, dynamic> json) {
  return _AddressComponents.fromJson(json);
}

/// @nodoc
mixin _$AddressComponents {
  @JsonKey(name: 'place_name')
  String? get placeName => throw _privateConstructorUsedError;
  String? get house => throw _privateConstructorUsedError;
  String? get road => throw _privateConstructorUsedError;

  /// Serializes this AddressComponents to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressComponents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressComponentsCopyWith<AddressComponents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressComponentsCopyWith<$Res> {
  factory $AddressComponentsCopyWith(
          AddressComponents value, $Res Function(AddressComponents) then) =
      _$AddressComponentsCopyWithImpl<$Res, AddressComponents>;
  @useResult
  $Res call(
      {@JsonKey(name: 'place_name') String? placeName,
      String? house,
      String? road});
}

/// @nodoc
class _$AddressComponentsCopyWithImpl<$Res, $Val extends AddressComponents>
    implements $AddressComponentsCopyWith<$Res> {
  _$AddressComponentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressComponents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = freezed,
    Object? house = freezed,
    Object? road = freezed,
  }) {
    return _then(_value.copyWith(
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      road: freezed == road
          ? _value.road
          : road // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressComponentsImplCopyWith<$Res>
    implements $AddressComponentsCopyWith<$Res> {
  factory _$$AddressComponentsImplCopyWith(_$AddressComponentsImpl value,
          $Res Function(_$AddressComponentsImpl) then) =
      __$$AddressComponentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'place_name') String? placeName,
      String? house,
      String? road});
}

/// @nodoc
class __$$AddressComponentsImplCopyWithImpl<$Res>
    extends _$AddressComponentsCopyWithImpl<$Res, _$AddressComponentsImpl>
    implements _$$AddressComponentsImplCopyWith<$Res> {
  __$$AddressComponentsImplCopyWithImpl(_$AddressComponentsImpl _value,
      $Res Function(_$AddressComponentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressComponents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = freezed,
    Object? house = freezed,
    Object? road = freezed,
  }) {
    return _then(_$AddressComponentsImpl(
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String?,
      road: freezed == road
          ? _value.road
          : road // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressComponentsImpl implements _AddressComponents {
  const _$AddressComponentsImpl(
      {@JsonKey(name: 'place_name') this.placeName, this.house, this.road});

  factory _$AddressComponentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressComponentsImplFromJson(json);

  @override
  @JsonKey(name: 'place_name')
  final String? placeName;
  @override
  final String? house;
  @override
  final String? road;

  @override
  String toString() {
    return 'AddressComponents(placeName: $placeName, house: $house, road: $road)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressComponentsImpl &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.house, house) || other.house == house) &&
            (identical(other.road, road) || other.road == road));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, placeName, house, road);

  /// Create a copy of AddressComponents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressComponentsImplCopyWith<_$AddressComponentsImpl> get copyWith =>
      __$$AddressComponentsImplCopyWithImpl<_$AddressComponentsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressComponentsImplToJson(
      this,
    );
  }
}

abstract class _AddressComponents implements AddressComponents {
  const factory _AddressComponents(
      {@JsonKey(name: 'place_name') final String? placeName,
      final String? house,
      final String? road}) = _$AddressComponentsImpl;

  factory _AddressComponents.fromJson(Map<String, dynamic> json) =
      _$AddressComponentsImpl.fromJson;

  @override
  @JsonKey(name: 'place_name')
  String? get placeName;
  @override
  String? get house;
  @override
  String? get road;

  /// Create a copy of AddressComponents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressComponentsImplCopyWith<_$AddressComponentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AreaComponents _$AreaComponentsFromJson(Map<String, dynamic> json) {
  return _AreaComponents.fromJson(json);
}

/// @nodoc
mixin _$AreaComponents {
  String? get area => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_area')
  String? get subArea => throw _privateConstructorUsedError;

  /// Serializes this AreaComponents to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AreaComponents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaComponentsCopyWith<AreaComponents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaComponentsCopyWith<$Res> {
  factory $AreaComponentsCopyWith(
          AreaComponents value, $Res Function(AreaComponents) then) =
      _$AreaComponentsCopyWithImpl<$Res, AreaComponents>;
  @useResult
  $Res call({String? area, @JsonKey(name: 'sub_area') String? subArea});
}

/// @nodoc
class _$AreaComponentsCopyWithImpl<$Res, $Val extends AreaComponents>
    implements $AreaComponentsCopyWith<$Res> {
  _$AreaComponentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AreaComponents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = freezed,
    Object? subArea = freezed,
  }) {
    return _then(_value.copyWith(
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      subArea: freezed == subArea
          ? _value.subArea
          : subArea // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaComponentsImplCopyWith<$Res>
    implements $AreaComponentsCopyWith<$Res> {
  factory _$$AreaComponentsImplCopyWith(_$AreaComponentsImpl value,
          $Res Function(_$AreaComponentsImpl) then) =
      __$$AreaComponentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? area, @JsonKey(name: 'sub_area') String? subArea});
}

/// @nodoc
class __$$AreaComponentsImplCopyWithImpl<$Res>
    extends _$AreaComponentsCopyWithImpl<$Res, _$AreaComponentsImpl>
    implements _$$AreaComponentsImplCopyWith<$Res> {
  __$$AreaComponentsImplCopyWithImpl(
      _$AreaComponentsImpl _value, $Res Function(_$AreaComponentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AreaComponents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = freezed,
    Object? subArea = freezed,
  }) {
    return _then(_$AreaComponentsImpl(
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      subArea: freezed == subArea
          ? _value.subArea
          : subArea // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaComponentsImpl implements _AreaComponents {
  const _$AreaComponentsImpl(
      {this.area, @JsonKey(name: 'sub_area') this.subArea});

  factory _$AreaComponentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaComponentsImplFromJson(json);

  @override
  final String? area;
  @override
  @JsonKey(name: 'sub_area')
  final String? subArea;

  @override
  String toString() {
    return 'AreaComponents(area: $area, subArea: $subArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaComponentsImpl &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.subArea, subArea) || other.subArea == subArea));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area, subArea);

  /// Create a copy of AreaComponents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaComponentsImplCopyWith<_$AreaComponentsImpl> get copyWith =>
      __$$AreaComponentsImplCopyWithImpl<_$AreaComponentsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaComponentsImplToJson(
      this,
    );
  }
}

abstract class _AreaComponents implements AreaComponents {
  const factory _AreaComponents(
      {final String? area,
      @JsonKey(name: 'sub_area') final String? subArea}) = _$AreaComponentsImpl;

  factory _AreaComponents.fromJson(Map<String, dynamic> json) =
      _$AreaComponentsImpl.fromJson;

  @override
  String? get area;
  @override
  @JsonKey(name: 'sub_area')
  String? get subArea;

  /// Create a copy of AreaComponents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaComponentsImplCopyWith<_$AreaComponentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
