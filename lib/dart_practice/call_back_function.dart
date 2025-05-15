import 'package:bloc_practice/dart_practice/singleton_design.dart';
import 'package:flutter/material.dart';

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
  SingleTonDesign.instanceFunction(userId: 'id', userName: 'Rahin');

  // Get Instance from Getter Method
  SingleTonDesign.instance.userID;

  SingleTonDesign.instance
      .setUserNameAndPassword(userName: 'Rahin', userPassword: '**6767##');
}





// reverse Call Back Function //
class A extends StatelessWidget {
  const A({super.key});

  void callThatFunction() {
    B(
      sendUserData: (userData) {
        if (userData == 'Rahin') {
          return 'Success';
        } else {
          return 'failde';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class B extends StatelessWidget {
  final String Function(String userData)? sendUserData;
  const B({super.key, this.sendUserData});

  @override
  Widget build(BuildContext context) {
    // TODO: implement  build
    String callBackData = sendUserData!.call('Rahin');
    print(callBackData);
    throw UnimplementedError();
  }
}
