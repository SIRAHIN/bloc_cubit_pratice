
import 'package:bloc_practice/data/models/grocery_model/grocery_model.dart';
import 'package:bloc_practice/presentation/hive_screen/hive_model/attendance_model/attendance_model.dart';
import 'package:bloc_practice/presentation/hive_screen/hive_model/todo_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveBoxConst {
  // 🔹 Private named constructor
  HiveBoxConst._internal();

  // 🔹 Static instance (only one object will be created)
  static final HiveBoxConst _instance = HiveBoxConst._internal();

  // 🔹 Public getter to access the instance
  static HiveBoxConst get instance => _instance;

  // 🔹 Hive box constants
  static const String todoBoxName = 'todo_box';

  late Box<TodoModel>todoBox;

    // 🔹 Hive box constants
  static const String groceryBoxName = 'grocery_box';

  late Box<GroceryItem>groceryBox;

  // 🔹 hive  box for check in out state
  static const String checkStateBoxname = "check_state_box";
  
  late Box<AttendanceModel> checkStateBox;

}
