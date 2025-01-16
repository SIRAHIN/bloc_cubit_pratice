import 'package:bloc_practice/data/models/post_model/post_model.dart';
import 'package:bloc_practice/data/repository/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cubit_post_state.dart';

class CubitPost extends Cubit<CubitPostState> {
  PostRepository postRepository;

  List<PostModel> postListData = [];
  List<PostModel> postFavoriteData = [];

  CubitPost(this.postRepository) : super(CubitPostInitialState());

  void fetchPost() async {
    emit(CubitPostLoadingState());
    try {
      List<PostModel> postData = await postRepository.fetchtedPost();
      postListData.addAll(postData);
      emit(CubitPostSuccessState(postListData, postFavoriteData));
    } catch (e) {
      emit(CubitPostFailureState(e.toString()));
    }
  }

  void addFavoritePost({required PostModel postItem}) {
    postFavoriteData.add(postItem);
    emit(CubitPostSuccessState(postListData, postFavoriteData));
  }

  void removeFavoritePost({required PostModel postItem}) {
    postFavoriteData.remove(postItem);
    emit(CubitPostSuccessState(postListData, postFavoriteData));
  }
}
