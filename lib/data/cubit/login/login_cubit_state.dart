class LoginCubitState {}

class LoginCubitInitialState extends LoginCubitState {}

class LoginCubitLoadinState extends LoginCubitState {}

class LoginCubitSuccessState extends LoginCubitState {
  final String successText;
  LoginCubitSuccessState(this.successText);
}

class LoginCubitFailureState extends LoginCubitState {
  final String errorText;
  LoginCubitFailureState(this.errorText);
}
