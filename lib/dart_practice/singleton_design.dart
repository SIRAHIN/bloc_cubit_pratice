class SingleTonDesign {
  
   String userID = '';
   String userNAME = '';

  static SingleTonDesign? _instance;
  SingleTonDesign._();

  
  // Instance without parameter and async //
  static SingleTonDesign get instance {
    if (_instance == null) {
      return _instance = SingleTonDesign._();
    } else {
      return _instance!;
    }
  }
  
  // Instance with parameter and async //
  static Future<SingleTonDesign> instanceFunction(
      {String? userId, String? userName}) async {
    if (_instance == null) {
      return _instance = SingleTonDesign._();
    } else {
      return _instance!;
    }
  }
  
  // Random Function // 
  void setUserNameAndPassword({String? userName, String? userPassword}) {
    print('Set user name successfully');
  }
}
