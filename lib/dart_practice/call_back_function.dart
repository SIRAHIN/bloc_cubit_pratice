import 'package:bloc_practice/dart_practice/singleton_design.dart';

void main() {
  TriggerCallBackFunction();
  voidTypeCallBackFunction('World');
}

void TriggerCallBackFunction() {
  print(callBackFunction('World'));
}

String callBackFunction(String userData) {
  return 'Hello $userData';
}

void voidTypeCallBackFunction(String userData) {
  print('Hello $userData');

  
  
  // Initial Idea of SingleTon //

  // Get Instance from isntance function
  SingleTonDesign.instance(userId: 'id', userName: 'Rahin');

  // Get Instance from Getter Method
  SingleTonDesign.singleTonInstance.userID;
  SingleTonDesign.singleTonInstance
      .setUserNameAndPassword(userName: 'Rahin', userPassword: '**6767##');
}
