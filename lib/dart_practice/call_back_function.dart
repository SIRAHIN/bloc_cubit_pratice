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
}