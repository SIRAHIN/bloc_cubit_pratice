class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final String successText;

  LoginSuccess({required this.successText});
}

class LoginFailuer extends LoginState {
  final String failuerText;

  LoginFailuer({required this.failuerText});
}
