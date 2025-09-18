class ThemeChangeState {
  final bool isDarkMode;

  ThemeChangeState({required this.isDarkMode});

  ThemeChangeState copyWith({bool? isDarkMode}) {
    return ThemeChangeState(
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}