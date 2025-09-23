import 'package:bloc_practice/data/bloc/login/login_event.dart';
import 'package:bloc_practice/data/bloc/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState(status: LoaginStatus.inital)) {
    // on<LoginRequested>((event, emit) async {
    //   emit(LoginLoading());
    //   try {
    //     final userEmail = event.userEmail;
    //     final userPassword = event.userPassword;

    //     if (userPassword.length < 6) {
    //       emit(LoginFailuer(failuerText: 'Password must be more then 6'));
    //       //return;
    //     }
    //     await Future.delayed(Duration(seconds: 2), () {
    //       emit(LoginSuccess(successText: "{$userEmail - $userPassword}"));
    //     });
    //   } catch (e) {
    //     emit(LoginFailuer(failuerText: e.toString()));
    //   }
    // });

    // on<LogoutRequested>((event, emit) async {
    //   emit(LoginLoading());
    //   try {
    //     await Future.delayed(Duration(seconds: 2), () {
    //       emit(LoginInitial());
    //     });
    //   } catch (e) {
    //     emit(LoginFailuer(failuerText: e.toString()));
    //   }
    // });
    on<LoginEvent>(
      (event, emit) async {
        await event.map(
          logIn: (event) async {
            print("Tirgger login event");
          emit(state.copyWith(status: LoaginStatus.loading));
          try {
            final userEmail = event.userEmial;
            final userPassword = event.userPasswrod;

            if (userPassword.length < 6) {
              emit(state.copyWith(status: LoaginStatus.error , failuerText: 'Password must be more then 6'));
              //return;
            }
            await Future.delayed(Duration(seconds: 2), () {
              emit(state.copyWith(status: LoaginStatus.success , successText: "{$userEmail - $userPassword}"));
            });
          } catch (e) {
            emit(state.copyWith(failuerText: e.toString()));
          }
        }, 
        logOut: (logout) async {
          emit(state.copyWith(status: LoaginStatus.loading));
          try {
            await Future.delayed(Duration(seconds: 2), () {
              emit(state.copyWith(status: LoaginStatus.inital));
            });
          } catch (e) {
            emit(state.copyWith(status: LoaginStatus.error,failuerText: e.toString()));
          }
        });
      },
    );
  }
}
