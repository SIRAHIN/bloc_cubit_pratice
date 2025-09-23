import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';  

// class LoginState {}

// class LoginInitial extends LoginState {}

// class LoginLoading extends LoginState {}

// class LoginSuccess extends LoginState {
//   final String successText;

//   LoginSuccess({required this.successText});
// }

// class LoginFailuer extends LoginState {
//   final String failuerText;

//   LoginFailuer({required this.failuerText});
// }

enum LoaginStatus{
  inital, loading, success, error
}
@freezed
class LoginState with _$LoginState{
  const factory LoginState({
    @Default(LoaginStatus.inital) LoaginStatus status,
    String? successText,
    String? failuerText,
  }) = _LoginState;
}
