// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_sheet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomSheetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opneBottomSheet,
    required TResult Function() closeBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? opneBottomSheet,
    TResult? Function()? closeBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opneBottomSheet,
    TResult Function()? closeBottomSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenBottomSheet value) opneBottomSheet,
    required TResult Function(_CloseBottomSheet value) closeBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenBottomSheet value)? opneBottomSheet,
    TResult? Function(_CloseBottomSheet value)? closeBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenBottomSheet value)? opneBottomSheet,
    TResult Function(_CloseBottomSheet value)? closeBottomSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomSheetEventCopyWith<$Res> {
  factory $BottomSheetEventCopyWith(
          BottomSheetEvent value, $Res Function(BottomSheetEvent) then) =
      _$BottomSheetEventCopyWithImpl<$Res, BottomSheetEvent>;
}

/// @nodoc
class _$BottomSheetEventCopyWithImpl<$Res, $Val extends BottomSheetEvent>
    implements $BottomSheetEventCopyWith<$Res> {
  _$BottomSheetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomSheetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OpenBottomSheetImplCopyWith<$Res> {
  factory _$$OpenBottomSheetImplCopyWith(_$OpenBottomSheetImpl value,
          $Res Function(_$OpenBottomSheetImpl) then) =
      __$$OpenBottomSheetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenBottomSheetImplCopyWithImpl<$Res>
    extends _$BottomSheetEventCopyWithImpl<$Res, _$OpenBottomSheetImpl>
    implements _$$OpenBottomSheetImplCopyWith<$Res> {
  __$$OpenBottomSheetImplCopyWithImpl(
      _$OpenBottomSheetImpl _value, $Res Function(_$OpenBottomSheetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomSheetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OpenBottomSheetImpl implements _OpenBottomSheet {
  const _$OpenBottomSheetImpl();

  @override
  String toString() {
    return 'BottomSheetEvent.opneBottomSheet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenBottomSheetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opneBottomSheet,
    required TResult Function() closeBottomSheet,
  }) {
    return opneBottomSheet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? opneBottomSheet,
    TResult? Function()? closeBottomSheet,
  }) {
    return opneBottomSheet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opneBottomSheet,
    TResult Function()? closeBottomSheet,
    required TResult orElse(),
  }) {
    if (opneBottomSheet != null) {
      return opneBottomSheet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenBottomSheet value) opneBottomSheet,
    required TResult Function(_CloseBottomSheet value) closeBottomSheet,
  }) {
    return opneBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenBottomSheet value)? opneBottomSheet,
    TResult? Function(_CloseBottomSheet value)? closeBottomSheet,
  }) {
    return opneBottomSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenBottomSheet value)? opneBottomSheet,
    TResult Function(_CloseBottomSheet value)? closeBottomSheet,
    required TResult orElse(),
  }) {
    if (opneBottomSheet != null) {
      return opneBottomSheet(this);
    }
    return orElse();
  }
}

abstract class _OpenBottomSheet implements BottomSheetEvent {
  const factory _OpenBottomSheet() = _$OpenBottomSheetImpl;
}

/// @nodoc
abstract class _$$CloseBottomSheetImplCopyWith<$Res> {
  factory _$$CloseBottomSheetImplCopyWith(_$CloseBottomSheetImpl value,
          $Res Function(_$CloseBottomSheetImpl) then) =
      __$$CloseBottomSheetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseBottomSheetImplCopyWithImpl<$Res>
    extends _$BottomSheetEventCopyWithImpl<$Res, _$CloseBottomSheetImpl>
    implements _$$CloseBottomSheetImplCopyWith<$Res> {
  __$$CloseBottomSheetImplCopyWithImpl(_$CloseBottomSheetImpl _value,
      $Res Function(_$CloseBottomSheetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomSheetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CloseBottomSheetImpl implements _CloseBottomSheet {
  const _$CloseBottomSheetImpl();

  @override
  String toString() {
    return 'BottomSheetEvent.closeBottomSheet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseBottomSheetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opneBottomSheet,
    required TResult Function() closeBottomSheet,
  }) {
    return closeBottomSheet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? opneBottomSheet,
    TResult? Function()? closeBottomSheet,
  }) {
    return closeBottomSheet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opneBottomSheet,
    TResult Function()? closeBottomSheet,
    required TResult orElse(),
  }) {
    if (closeBottomSheet != null) {
      return closeBottomSheet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenBottomSheet value) opneBottomSheet,
    required TResult Function(_CloseBottomSheet value) closeBottomSheet,
  }) {
    return closeBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenBottomSheet value)? opneBottomSheet,
    TResult? Function(_CloseBottomSheet value)? closeBottomSheet,
  }) {
    return closeBottomSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenBottomSheet value)? opneBottomSheet,
    TResult Function(_CloseBottomSheet value)? closeBottomSheet,
    required TResult orElse(),
  }) {
    if (closeBottomSheet != null) {
      return closeBottomSheet(this);
    }
    return orElse();
  }
}

abstract class _CloseBottomSheet implements BottomSheetEvent {
  const factory _CloseBottomSheet() = _$CloseBottomSheetImpl;
}

/// @nodoc
mixin _$BottomSheetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isOpen,
    required TResult Function() isClose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isOpen,
    TResult? Function()? isClose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isOpen,
    TResult Function()? isClose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsOpen value) isOpen,
    required TResult Function(_IsClose value) isClose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsOpen value)? isOpen,
    TResult? Function(_IsClose value)? isClose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsOpen value)? isOpen,
    TResult Function(_IsClose value)? isClose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomSheetStateCopyWith<$Res> {
  factory $BottomSheetStateCopyWith(
          BottomSheetState value, $Res Function(BottomSheetState) then) =
      _$BottomSheetStateCopyWithImpl<$Res, BottomSheetState>;
}

/// @nodoc
class _$BottomSheetStateCopyWithImpl<$Res, $Val extends BottomSheetState>
    implements $BottomSheetStateCopyWith<$Res> {
  _$BottomSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomSheetState
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
    extends _$BottomSheetStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomSheetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BottomSheetState.initial()';
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
    required TResult Function() isOpen,
    required TResult Function() isClose,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isOpen,
    TResult? Function()? isClose,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isOpen,
    TResult Function()? isClose,
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
    required TResult Function(_IsOpen value) isOpen,
    required TResult Function(_IsClose value) isClose,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsOpen value)? isOpen,
    TResult? Function(_IsClose value)? isClose,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsOpen value)? isOpen,
    TResult Function(_IsClose value)? isClose,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BottomSheetState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$IsOpenImplCopyWith<$Res> {
  factory _$$IsOpenImplCopyWith(
          _$IsOpenImpl value, $Res Function(_$IsOpenImpl) then) =
      __$$IsOpenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsOpenImplCopyWithImpl<$Res>
    extends _$BottomSheetStateCopyWithImpl<$Res, _$IsOpenImpl>
    implements _$$IsOpenImplCopyWith<$Res> {
  __$$IsOpenImplCopyWithImpl(
      _$IsOpenImpl _value, $Res Function(_$IsOpenImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomSheetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IsOpenImpl implements _IsOpen {
  const _$IsOpenImpl();

  @override
  String toString() {
    return 'BottomSheetState.isOpen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsOpenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isOpen,
    required TResult Function() isClose,
  }) {
    return isOpen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isOpen,
    TResult? Function()? isClose,
  }) {
    return isOpen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isOpen,
    TResult Function()? isClose,
    required TResult orElse(),
  }) {
    if (isOpen != null) {
      return isOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsOpen value) isOpen,
    required TResult Function(_IsClose value) isClose,
  }) {
    return isOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsOpen value)? isOpen,
    TResult? Function(_IsClose value)? isClose,
  }) {
    return isOpen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsOpen value)? isOpen,
    TResult Function(_IsClose value)? isClose,
    required TResult orElse(),
  }) {
    if (isOpen != null) {
      return isOpen(this);
    }
    return orElse();
  }
}

abstract class _IsOpen implements BottomSheetState {
  const factory _IsOpen() = _$IsOpenImpl;
}

/// @nodoc
abstract class _$$IsCloseImplCopyWith<$Res> {
  factory _$$IsCloseImplCopyWith(
          _$IsCloseImpl value, $Res Function(_$IsCloseImpl) then) =
      __$$IsCloseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsCloseImplCopyWithImpl<$Res>
    extends _$BottomSheetStateCopyWithImpl<$Res, _$IsCloseImpl>
    implements _$$IsCloseImplCopyWith<$Res> {
  __$$IsCloseImplCopyWithImpl(
      _$IsCloseImpl _value, $Res Function(_$IsCloseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomSheetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IsCloseImpl implements _IsClose {
  const _$IsCloseImpl();

  @override
  String toString() {
    return 'BottomSheetState.isClose()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsCloseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isOpen,
    required TResult Function() isClose,
  }) {
    return isClose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isOpen,
    TResult? Function()? isClose,
  }) {
    return isClose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isOpen,
    TResult Function()? isClose,
    required TResult orElse(),
  }) {
    if (isClose != null) {
      return isClose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsOpen value) isOpen,
    required TResult Function(_IsClose value) isClose,
  }) {
    return isClose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsOpen value)? isOpen,
    TResult? Function(_IsClose value)? isClose,
  }) {
    return isClose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsOpen value)? isOpen,
    TResult Function(_IsClose value)? isClose,
    required TResult orElse(),
  }) {
    if (isClose != null) {
      return isClose(this);
    }
    return orElse();
  }
}

abstract class _IsClose implements BottomSheetState {
  const factory _IsClose() = _$IsCloseImpl;
}
