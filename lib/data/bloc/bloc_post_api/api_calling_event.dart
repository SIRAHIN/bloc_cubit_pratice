import 'package:bloc_practice/data/models/post_model/post_model.dart';

class ApiCallingEvent {}

class ApiFetchEvent extends ApiCallingEvent {}

class ApiAddFavoriteEvent extends ApiCallingEvent{
  final PostModel postModelItem;
  ApiAddFavoriteEvent({required this.postModelItem});
}

class ApiRemovedFavoriteEvent extends ApiCallingEvent{
  final PostModel postModelItem;
  ApiRemovedFavoriteEvent({required this.postModelItem});
}

class DeleteItemFromPost extends ApiCallingEvent{
  final PostModel postModelItem;
  DeleteItemFromPost({required this.postModelItem});
}