// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherBlocEvent {
  Position get positon => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position positon) featchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Position positon)? featchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position positon)? featchWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_featchWeather value) featchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_featchWeather value)? featchWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_featchWeather value)? featchWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of WeatherBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherBlocEventCopyWith<WeatherBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherBlocEventCopyWith<$Res> {
  factory $WeatherBlocEventCopyWith(
          WeatherBlocEvent value, $Res Function(WeatherBlocEvent) then) =
      _$WeatherBlocEventCopyWithImpl<$Res, WeatherBlocEvent>;
  @useResult
  $Res call({Position positon});
}

/// @nodoc
class _$WeatherBlocEventCopyWithImpl<$Res, $Val extends WeatherBlocEvent>
    implements $WeatherBlocEventCopyWith<$Res> {
  _$WeatherBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positon = null,
  }) {
    return _then(_value.copyWith(
      positon: null == positon
          ? _value.positon
          : positon // ignore: cast_nullable_to_non_nullable
              as Position,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$featchWeatherImplCopyWith<$Res>
    implements $WeatherBlocEventCopyWith<$Res> {
  factory _$$featchWeatherImplCopyWith(
          _$featchWeatherImpl value, $Res Function(_$featchWeatherImpl) then) =
      __$$featchWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Position positon});
}

/// @nodoc
class __$$featchWeatherImplCopyWithImpl<$Res>
    extends _$WeatherBlocEventCopyWithImpl<$Res, _$featchWeatherImpl>
    implements _$$featchWeatherImplCopyWith<$Res> {
  __$$featchWeatherImplCopyWithImpl(
      _$featchWeatherImpl _value, $Res Function(_$featchWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positon = null,
  }) {
    return _then(_$featchWeatherImpl(
      positon: null == positon
          ? _value.positon
          : positon // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$featchWeatherImpl implements _featchWeather {
  const _$featchWeatherImpl({required this.positon});

  @override
  final Position positon;

  @override
  String toString() {
    return 'WeatherBlocEvent.featchWeather(positon: $positon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$featchWeatherImpl &&
            (identical(other.positon, positon) || other.positon == positon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, positon);

  /// Create a copy of WeatherBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$featchWeatherImplCopyWith<_$featchWeatherImpl> get copyWith =>
      __$$featchWeatherImplCopyWithImpl<_$featchWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position positon) featchWeather,
  }) {
    return featchWeather(positon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Position positon)? featchWeather,
  }) {
    return featchWeather?.call(positon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position positon)? featchWeather,
    required TResult orElse(),
  }) {
    if (featchWeather != null) {
      return featchWeather(positon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_featchWeather value) featchWeather,
  }) {
    return featchWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_featchWeather value)? featchWeather,
  }) {
    return featchWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_featchWeather value)? featchWeather,
    required TResult orElse(),
  }) {
    if (featchWeather != null) {
      return featchWeather(this);
    }
    return orElse();
  }
}

abstract class _featchWeather implements WeatherBlocEvent {
  const factory _featchWeather({required final Position positon}) =
      _$featchWeatherImpl;

  @override
  Position get positon;

  /// Create a copy of WeatherBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$featchWeatherImplCopyWith<_$featchWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherBlocState {
  WeatherStatus get status => throw _privateConstructorUsedError;
  Weather? get weather => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherBlocStateCopyWith<WeatherBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherBlocStateCopyWith<$Res> {
  factory $WeatherBlocStateCopyWith(
          WeatherBlocState value, $Res Function(WeatherBlocState) then) =
      _$WeatherBlocStateCopyWithImpl<$Res, WeatherBlocState>;
  @useResult
  $Res call({WeatherStatus status, Weather? weather, String? error});
}

/// @nodoc
class _$WeatherBlocStateCopyWithImpl<$Res, $Val extends WeatherBlocState>
    implements $WeatherBlocStateCopyWith<$Res> {
  _$WeatherBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? weather = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherBlocStateImplCopyWith<$Res>
    implements $WeatherBlocStateCopyWith<$Res> {
  factory _$$WeatherBlocStateImplCopyWith(_$WeatherBlocStateImpl value,
          $Res Function(_$WeatherBlocStateImpl) then) =
      __$$WeatherBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherStatus status, Weather? weather, String? error});
}

/// @nodoc
class __$$WeatherBlocStateImplCopyWithImpl<$Res>
    extends _$WeatherBlocStateCopyWithImpl<$Res, _$WeatherBlocStateImpl>
    implements _$$WeatherBlocStateImplCopyWith<$Res> {
  __$$WeatherBlocStateImplCopyWithImpl(_$WeatherBlocStateImpl _value,
      $Res Function(_$WeatherBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? weather = freezed,
    Object? error = freezed,
  }) {
    return _then(_$WeatherBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WeatherBlocStateImpl implements _WeatherBlocState {
  const _$WeatherBlocStateImpl(
      {this.status = WeatherStatus.inital, this.weather, this.error});

  @override
  @JsonKey()
  final WeatherStatus status;
  @override
  final Weather? weather;
  @override
  final String? error;

  @override
  String toString() {
    return 'WeatherBlocState(status: $status, weather: $weather, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, weather, error);

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherBlocStateImplCopyWith<_$WeatherBlocStateImpl> get copyWith =>
      __$$WeatherBlocStateImplCopyWithImpl<_$WeatherBlocStateImpl>(
          this, _$identity);
}

abstract class _WeatherBlocState implements WeatherBlocState {
  const factory _WeatherBlocState(
      {final WeatherStatus status,
      final Weather? weather,
      final String? error}) = _$WeatherBlocStateImpl;

  @override
  WeatherStatus get status;
  @override
  Weather? get weather;
  @override
  String? get error;

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherBlocStateImplCopyWith<_$WeatherBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
