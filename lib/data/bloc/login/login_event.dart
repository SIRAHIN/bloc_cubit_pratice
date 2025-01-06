class LoginEvent {}

class LoginRequested extends LoginEvent {
  final String userEmail;
  final String userPassword;

  LoginRequested({required this.userEmail, required this.userPassword});
}

class LogoutRequested extends LoginEvent{}
