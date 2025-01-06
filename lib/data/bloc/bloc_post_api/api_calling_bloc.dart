import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_event.dart';
import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_state.dart';
import 'package:bloc_practice/data/repository/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiCallingBloc extends Bloc<ApiCallingEvent, ApiCallingState> {
  final PostRepository postRepository;

  ApiCallingBloc(this.postRepository) : super(ApiCallingInitial()) {
    on<ApiFetchEvent>((event, emit) async {
      emit(ApiCallingLoading());
      try {
        print('Calling fetchtedPost...');
        final postModel = await postRepository.fetchtedPost();
        print('Successfully fetched posts: ${postModel.length}');
        emit(ApiCallingSuccess(postModel));
      } catch (e) {
        print('Error fetching posts: $e');
        emit(ApiCallingFailuer(failuerText: e.toString()));
      }
    });
  }
}
