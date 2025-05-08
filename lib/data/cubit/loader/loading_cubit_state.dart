class LoadingCubitState {
  final bool isLoading;
  LoadingCubitState({this.isLoading = false});

  LoadingCubitState copyWith({
    bool? isLoading
  }) {
    return LoadingCubitState(isLoading: isLoading ?? this.isLoading);
  }
}
