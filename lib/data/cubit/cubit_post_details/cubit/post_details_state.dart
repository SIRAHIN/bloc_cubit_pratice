part of 'post_details_cubit.dart';

@immutable
sealed class PostDetailsCubitState {}

final class PostDetailsInitialCubitState extends PostDetailsCubitState {}

final class PostDetailsLoadingCubitState extends PostDetailsCubitState {}

final class PostDetailsSuccessCubitState extends PostDetailsCubitState {
  final PostDetailsModel postDetailsModel;

  PostDetailsSuccessCubitState(this.postDetailsModel);
}

final class PostDetailsFailureCubitState extends PostDetailsCubitState {
  final String failureText;

  PostDetailsFailureCubitState(this.failureText);
}
