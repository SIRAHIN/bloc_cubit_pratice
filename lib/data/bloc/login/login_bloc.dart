import 'package:bloc_practice/data/bloc/login/login_event.dart';
import 'package:bloc_practice/data/bloc/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginRequested>((event, emit) async {
      emit(LoginLoading());
      try {
        final userEmail = event.userEmail;
        final userPassword = event.userPassword;

        if (userPassword.length < 6) {
          emit(LoginFailuer(failuerText: 'Password must be more then 6'));
          //return;
        }
        await Future.delayed(Duration(seconds: 2), () {
          emit(LoginSuccess(successText: "{$userEmail - $userPassword}"));
        });
      } catch (e) {
        emit(LoginFailuer(failuerText: e.toString()));
      }
    });

    on<LogoutRequested>((event, emit) async {
      emit(LoginLoading());
      try {
        await Future.delayed(Duration(seconds: 2), () {
          emit(LoginInitial());
        });
      } catch (e) {
        emit(LoginFailuer(failuerText: e.toString()));
      }
    });
  }
}
