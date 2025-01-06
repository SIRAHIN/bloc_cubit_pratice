import 'package:bloc_practice/data/cubit/login/login_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit() : super(LoginCubitInitialState());

  void loginRequested(
      {required String userEmail, required String userPassowrd}) async {
    emit(LoginCubitLoadinState());
    try {
      if (userEmail.isNotEmpty && userPassowrd.isNotEmpty) {
        await Future.delayed(Duration(seconds: 3), () {
          emit(LoginCubitSuccessState('$userEmail - $userPassowrd'));
        });
      } else {
        return emit(LoginCubitFailureState('Required field cannot be empty'));
      }
    } catch (e) {
      emit(LoginCubitFailureState(e.toString()));
    }
  }

  void logoutRequested() async {
    emit(LoginCubitLoadinState());
    try {
      await Future.delayed(Duration(seconds: 3), () {
        emit(LoginCubitInitialState());
      });
    } catch (e) {
      emit(LoginCubitFailureState(e.toString()));
    }
  }
}
