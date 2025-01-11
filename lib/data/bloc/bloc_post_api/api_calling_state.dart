import 'package:bloc_practice/data/models/post_model.dart';

class ApiCallingState {}

class ApiCallingInitial extends ApiCallingState {}

class ApiCallingLoading extends ApiCallingState {}

class ApiCallingSuccess extends ApiCallingState {
  final List<PostModel> postModel;
  final List<PostModel> postFavoriteList;

  ApiCallingSuccess({this.postModel = const [], this.postFavoriteList = const []});
}


// class PostFavoriteState extends ApiCallingState {
//   final List<PostModel> postFavoriteList;

//   PostFavoriteState(this.postFavoriteList);
// }






class ApiCallingFailuer extends ApiCallingState {
  final String failuerText;

  ApiCallingFailuer({required this.failuerText});
}