import 'package:bloc_practice/data/models/post_model/post_model.dart';
import 'package:bloc_practice/data/repository/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'cubit_post_state.dart';

class CubitPost extends Cubit<CubitPostState> {
  PostRepository postRepository;

  CubitPost(this.postRepository) : super(CubitPostInitialState());

  void fetchPost() async {
    emit(CubitPostLoadingState());
    try {
      List<PostModel> postDataList = await postRepository.fetchtedPost();
      emit(CubitPostSuccessState(postDataList));
    } catch (e) {
      emit(CubitPostFailureState(e.toString()));
    }
  }
}
