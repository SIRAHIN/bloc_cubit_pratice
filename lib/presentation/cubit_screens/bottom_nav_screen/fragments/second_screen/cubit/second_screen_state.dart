class SecondScreenState {
  final int index;
  final bool isLoaded;

  SecondScreenState({
    required this.index,
    this.isLoaded = false,
  });

  SecondScreenState copyWith({
    int? index,
    bool? isLoaded,
  }) {
    return SecondScreenState(
      index: index ?? this.index,
      isLoaded: isLoaded ?? this.isLoaded,
    );
  }
}
