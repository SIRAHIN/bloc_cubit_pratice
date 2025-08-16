// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskStatusState {
  TaskStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of TaskStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskStatusStateCopyWith<TaskStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStatusStateCopyWith<$Res> {
  factory $TaskStatusStateCopyWith(
          TaskStatusState value, $Res Function(TaskStatusState) then) =
      _$TaskStatusStateCopyWithImpl<$Res, TaskStatusState>;
  @useResult
  $Res call({TaskStatus status});
}

/// @nodoc
class _$TaskStatusStateCopyWithImpl<$Res, $Val extends TaskStatusState>
    implements $TaskStatusStateCopyWith<$Res> {
  _$TaskStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskStatusStateImplCopyWith<$Res>
    implements $TaskStatusStateCopyWith<$Res> {
  factory _$$TaskStatusStateImplCopyWith(_$TaskStatusStateImpl value,
          $Res Function(_$TaskStatusStateImpl) then) =
      __$$TaskStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskStatus status});
}

/// @nodoc
class __$$TaskStatusStateImplCopyWithImpl<$Res>
    extends _$TaskStatusStateCopyWithImpl<$Res, _$TaskStatusStateImpl>
    implements _$$TaskStatusStateImplCopyWith<$Res> {
  __$$TaskStatusStateImplCopyWithImpl(
      _$TaskStatusStateImpl _value, $Res Function(_$TaskStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$TaskStatusStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
    ));
  }
}

/// @nodoc

class _$TaskStatusStateImpl implements _TaskStatusState {
  const _$TaskStatusStateImpl({this.status = TaskStatus.init});

  @override
  @JsonKey()
  final TaskStatus status;

  @override
  String toString() {
    return 'TaskStatusState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStatusStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of TaskStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStatusStateImplCopyWith<_$TaskStatusStateImpl> get copyWith =>
      __$$TaskStatusStateImplCopyWithImpl<_$TaskStatusStateImpl>(
          this, _$identity);
}

abstract class _TaskStatusState implements TaskStatusState {
  const factory _TaskStatusState({final TaskStatus status}) =
      _$TaskStatusStateImpl;

  @override
  TaskStatus get status;

  /// Create a copy of TaskStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskStatusStateImplCopyWith<_$TaskStatusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
