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


// State class with single class //
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

// State class with seprated class //
// @freezed
// class ProductState with _$ProductState {
//   const factory ProductState.initial() = _Initial;
//   const factory ProductState.loading() = _Loading;
//   const factory ProductState.loaded({required List<Product> products, required @Default(LoaginStatus.inital) LoaginStatus status }) = _Loaded;
//   const factory ProductState.error(String message) = _Error;
// }
