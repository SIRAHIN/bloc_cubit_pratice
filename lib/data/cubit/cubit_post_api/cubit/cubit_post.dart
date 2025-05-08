import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/data/models/post_model/post_model.dart';
import 'package:bloc_practice/data/repository/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cubit_post_state.dart';

class CubitPost extends Cubit<CubitPostState> {
  //PostRepository postRepository;

  PostRepository postRepository = getIt<PostRepository>();

  List<PostModel> postListData = [];
  List<PostModel> postFavoriteData = [];

  CubitPost() : super(CubitPostState());

  void fetchPost() async {
    emit(state.copyWith(status: CubitPostStatus.loading));
    try {
      List<PostModel> postData = await postRepository.fetchtedPost();
      postListData.addAll(postData);
      emit(state.copyWith(postModel: postListData, status: CubitPostStatus.success));
    } catch (e) {
      emit(state.copyWith(errorString: e.toString()));
    }
  }

  void addFavoritePost({required PostModel postItem}) {
    postFavoriteData.add(postItem);
    emit(state.copyWith(postFavoriteList: postFavoriteData));
  }

  void removeFavoritePost({required PostModel postItem}) {
    postFavoriteData.remove(postItem);
    emit(state.copyWith(postFavoriteList: postFavoriteData));
  }
}
