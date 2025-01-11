import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_event.dart';
import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_state.dart';
import 'package:bloc_practice/data/models/post_model.dart';
import 'package:bloc_practice/data/repository/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiCallingBloc extends Bloc<ApiCallingEvent, ApiCallingState> {
  final PostRepository postRepository;

  List<PostModel> postFavoriteList = [];
  List<PostModel> postModel = [];

  ApiCallingBloc(this.postRepository) : super(ApiCallingInitial()) {
    on<ApiFetchEvent>((event, emit) async {
      emit(ApiCallingLoading());
      try {
        print('Calling fetchtedPost...');
        final postModelData = await postRepository.fetchtedPost();
        postModel.addAll(postModelData);
        print('Successfully fetched posts: ${postModel.length}');
        emit(ApiCallingSuccess(postModel: postModel, postFavoriteList: postFavoriteList));
      } catch (e) {
        print('Error fetching posts: $e');
        emit(ApiCallingFailuer(failuerText: e.toString()));
      }
    });

    on<ApiAddFavoriteEvent>((event, emit) {
      postFavoriteList.add(event.postModelItem);
      emit(ApiCallingSuccess(postModel: postModel, postFavoriteList: postFavoriteList));
    });

    on<ApiRemovedFavoriteEvent>((event, emit) {
      postFavoriteList.remove(event.postModelItem);
      emit(ApiCallingSuccess(postModel: postModel, postFavoriteList: postFavoriteList));
    });

    on<DeleteItemFromPost>((event, emit) {
      postModel.remove(event.postModelItem);
      emit(ApiCallingSuccess(postModel: postModel, postFavoriteList: postFavoriteList));
    });
  }
}
