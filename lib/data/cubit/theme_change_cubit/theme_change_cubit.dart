import 'package:bloc_practice/data/cubit/theme_change_cubit/theme_change_state.dart';
import 'package:bloc_practice/presentation/hive_screen/const/hive_box_const.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeChangeCubit extends Cubit<ThemeChangeState> {
  ThemeChangeCubit() : super(ThemeChangeState(isDarkMode: false)) {
    initialTheme();
  }

  void initialTheme() {
    final themeBox = HiveBoxConst.instance.themeBox;
    final isDark = themeBox.get('isDarkMode', defaultValue: false) ?? false;
    emit(ThemeChangeState(isDarkMode: isDark));
  }

  void toggleTheme(bool isDark) {
    final themeBox = HiveBoxConst.instance.themeBox;
    themeBox.put('isDarkMode', isDark);
    emit(ThemeChangeState(isDarkMode: isDark));
  }
}
