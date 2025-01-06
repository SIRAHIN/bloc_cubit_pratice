import 'package:bloc_practice/data/models/post_model.dart';

class ApiCallingState {}

class ApiCallingInitial extends ApiCallingState {}

class ApiCallingLoading extends ApiCallingState {}

class ApiCallingSuccess extends ApiCallingState {
  final List<PostModel> postModel;

  ApiCallingSuccess(this.postModel);
}

class ApiCallingFailuer extends ApiCallingState {
  final String failuerText;

  ApiCallingFailuer({required this.failuerText});
}