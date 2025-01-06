import 'package:bloc_practice/data/models/post_details_model.dart';
import 'package:bloc_practice/data/models/post_model.dart';

class PostDetailsState {}

class PostDetailsInitial extends PostDetailsState {}

class PostDetailsLoading extends PostDetailsState {}

class PostDetailsSuccess extends PostDetailsState {
  final PostDetailsModel postModel;
  PostDetailsSuccess(this.postModel);
}

class PostDetailsFailuer extends PostDetailsState {
  final String failuerText;
  PostDetailsFailuer({required this.failuerText});
}