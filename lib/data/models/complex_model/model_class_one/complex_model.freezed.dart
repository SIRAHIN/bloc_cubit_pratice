// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complex_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComplexApiResponse _$ComplexApiResponseFromJson(Map<String, dynamic> json) {
  return _ComplexApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ComplexApiResponse {
  String get status => throw _privateConstructorUsedError;
  UserModel get data => throw _privateConstructorUsedError;

  /// Serializes this ComplexApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComplexApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComplexApiResponseCopyWith<ComplexApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplexApiResponseCopyWith<$Res> {
  factory $ComplexApiResponseCopyWith(
          ComplexApiResponse value, $Res Function(ComplexApiResponse) then) =
      _$ComplexApiResponseCopyWithImpl<$Res, ComplexApiResponse>;
  @useResult
  $Res call({String status, UserModel data});

  $UserModelCopyWith<$Res> get data;
}

/// @nodoc
class _$ComplexApiResponseCopyWithImpl<$Res, $Val extends ComplexApiResponse>
    implements $ComplexApiResponseCopyWith<$Res> {
  _$ComplexApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComplexApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  /// Create a copy of ComplexApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get data {
    return $UserModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ComplexApiResponseImplCopyWith<$Res>
    implements $ComplexApiResponseCopyWith<$Res> {
  factory _$$ComplexApiResponseImplCopyWith(_$ComplexApiResponseImpl value,
          $Res Function(_$ComplexApiResponseImpl) then) =
      __$$ComplexApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, UserModel data});

  @override
  $UserModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$ComplexApiResponseImplCopyWithImpl<$Res>
    extends _$ComplexApiResponseCopyWithImpl<$Res, _$ComplexApiResponseImpl>
    implements _$$ComplexApiResponseImplCopyWith<$Res> {
  __$$ComplexApiResponseImplCopyWithImpl(_$ComplexApiResponseImpl _value,
      $Res Function(_$ComplexApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComplexApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$ComplexApiResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComplexApiResponseImpl implements _ComplexApiResponse {
  const _$ComplexApiResponseImpl({required this.status, required this.data});

  factory _$ComplexApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplexApiResponseImplFromJson(json);

  @override
  final String status;
  @override
  final UserModel data;

  @override
  String toString() {
    return 'ComplexApiResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplexApiResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of ComplexApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplexApiResponseImplCopyWith<_$ComplexApiResponseImpl> get copyWith =>
      __$$ComplexApiResponseImplCopyWithImpl<_$ComplexApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplexApiResponseImplToJson(
      this,
    );
  }
}

abstract class _ComplexApiResponse implements ComplexApiResponse {
  const factory _ComplexApiResponse(
      {required final String status,
      required final UserModel data}) = _$ComplexApiResponseImpl;

  factory _ComplexApiResponse.fromJson(Map<String, dynamic> json) =
      _$ComplexApiResponseImpl.fromJson;

  @override
  String get status;
  @override
  UserModel get data;

  /// Create a copy of ComplexApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplexApiResponseImplCopyWith<_$ComplexApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
