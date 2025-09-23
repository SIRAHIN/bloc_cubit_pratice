import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_event.freezed.dart';


@freezed
class LoginEvent with _$LoginEvent{

  const factory LoginEvent.logIn({
    required String userEmial,
    required String userPasswrod,
  }) = _LogIn;

  const factory LoginEvent.logOut() = _Logout;
}



// class LoginRequested extends LoginEvent {
//   final String userEmail;
//   final String userPassword;

//   LoginRequested({required this.userEmail, required this.userPassword});
// }

// class LogoutRequested extends LoginEvent{}
