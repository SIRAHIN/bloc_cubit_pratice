part of 'cubit_post.dart';

sealed class CubitPostState {}

final class CubitPostInitialState extends CubitPostState {}

final class CubitPostLoadingState extends CubitPostState {}

final class CubitPostSuccessState extends CubitPostState {
  final List<PostModel> postModel;

  CubitPostSuccessState(this.postModel);
}

final class CubitPostFailureState extends CubitPostState {
  final String failureText;

  CubitPostFailureState(this.failureText);
}
