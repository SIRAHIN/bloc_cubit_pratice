import 'package:bloc_practice/data/bloc/bloc_post_details/post_details_event.dart';
import 'package:bloc_practice/data/bloc/bloc_post_details/post_details_state.dart';
import 'package:bloc_practice/data/repository/post_details_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostDetailsBloc extends Bloc<PostDetailsEvent, PostDetailsState>{
    
    PostDetailsRepository postDetailsRepository;
    PostDetailsBloc(this.postDetailsRepository) : super(PostDetailsInitial()) {
    
    on<PostDetailsFetchEvent>((event, emit) async {
      emit(PostDetailsLoading());
      try {
        print('Calling fetchtedPost...');
        final postModel = await postDetailsRepository.getPostDetails(event.postId);
        print(postModel.toJson());
        emit(PostDetailsSuccess(postModel));
      } catch (e) {
        print('Error fetching posts: $e');
        emit(PostDetailsFailuer(failuerText: e.toString()));
      }
    });
  }
}