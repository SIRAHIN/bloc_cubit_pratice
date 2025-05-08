part of 'cubit_post.dart';

enum CubitPostStatus { initial, loading, success, failure }

 class CubitPostState {
  final CubitPostStatus status;
  final List<PostModel> postModel;
  final List<PostModel> postFavoriteList;
  final String errorString;

  CubitPostState({this.postModel = const [], this.postFavoriteList = const [], this.status = CubitPostStatus.initial, this.errorString = ''});

  CubitPostState copyWith({
    List<PostModel>? postModel,
    List<PostModel>? postFavoriteList,
    CubitPostStatus? status,
    String? errorString,
  }) {
    return CubitPostState(
        postFavoriteList: postFavoriteList ?? this.postFavoriteList,
        postModel: postModel ?? this.postModel,
        status: status ?? this.status,
        errorString: errorString ?? this.errorString

    );
  }
}

// final class CubitPostInitialState extends CubitPostState {}

// final class CubitPostLoadingState extends CubitPostState {}

// final class CubitPostSuccessState extends CubitPostState {
//   final List<PostModel> postModel;
//   final List<PostModel> postFavoriteList;

//   CubitPostSuccessState(this.postModel, this.postFavoriteList);
// }

// final class CubitPostFailureState extends CubitPostState {
//   final String failureText;

//   CubitPostFailureState(this.failureText);
// }
