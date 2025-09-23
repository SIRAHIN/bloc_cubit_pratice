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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Weather weatherData) loadedWeather,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Weather weatherData)? loadedWeather,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Weather weatherData)? loadedWeather,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedWeather value) loadedWeather,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedWeather value)? loadedWeather,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedWeather value)? loadedWeather,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherBlocStateCopyWith<$Res> {
  factory $WeatherBlocStateCopyWith(
          WeatherBlocState value, $Res Function(WeatherBlocState) then) =
      _$WeatherBlocStateCopyWithImpl<$Res, WeatherBlocState>;
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
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeatherBlocStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WeatherBlocState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Weather weatherData) loadedWeather,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Weather weatherData)? loadedWeather,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Weather weatherData)? loadedWeather,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedWeather value) loadedWeather,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedWeather value)? loadedWeather,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedWeather value)? loadedWeather,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeatherBlocState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedWeatherImplCopyWith<$Res> {
  factory _$$LoadedWeatherImplCopyWith(
          _$LoadedWeatherImpl value, $Res Function(_$LoadedWeatherImpl) then) =
      __$$LoadedWeatherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Weather weatherData});
}

/// @nodoc
class __$$LoadedWeatherImplCopyWithImpl<$Res>
    extends _$WeatherBlocStateCopyWithImpl<$Res, _$LoadedWeatherImpl>
    implements _$$LoadedWeatherImplCopyWith<$Res> {
  __$$LoadedWeatherImplCopyWithImpl(
      _$LoadedWeatherImpl _value, $Res Function(_$LoadedWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherData = null,
  }) {
    return _then(_$LoadedWeatherImpl(
      null == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$LoadedWeatherImpl implements _LoadedWeather {
  const _$LoadedWeatherImpl(this.weatherData);

  @override
  final Weather weatherData;

  @override
  String toString() {
    return 'WeatherBlocState.loadedWeather(weatherData: $weatherData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedWeatherImpl &&
            (identical(other.weatherData, weatherData) ||
                other.weatherData == weatherData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherData);

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedWeatherImplCopyWith<_$LoadedWeatherImpl> get copyWith =>
      __$$LoadedWeatherImplCopyWithImpl<_$LoadedWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Weather weatherData) loadedWeather,
    required TResult Function(String message) error,
  }) {
    return loadedWeather(weatherData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Weather weatherData)? loadedWeather,
    TResult? Function(String message)? error,
  }) {
    return loadedWeather?.call(weatherData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Weather weatherData)? loadedWeather,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedWeather != null) {
      return loadedWeather(weatherData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedWeather value) loadedWeather,
    required TResult Function(_Error value) error,
  }) {
    return loadedWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedWeather value)? loadedWeather,
    TResult? Function(_Error value)? error,
  }) {
    return loadedWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedWeather value)? loadedWeather,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadedWeather != null) {
      return loadedWeather(this);
    }
    return orElse();
  }
}

abstract class _LoadedWeather implements WeatherBlocState {
  const factory _LoadedWeather(final Weather weatherData) = _$LoadedWeatherImpl;

  Weather get weatherData;

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedWeatherImplCopyWith<_$LoadedWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$WeatherBlocStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WeatherBlocState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Weather weatherData) loadedWeather,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Weather weatherData)? loadedWeather,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Weather weatherData)? loadedWeather,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadedWeather value) loadedWeather,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadedWeather value)? loadedWeather,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadedWeather value)? loadedWeather,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WeatherBlocState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of WeatherBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
