import 'package:bloc/bloc.dart';
import 'package:bloc_practice/data/models/post_details_model/post_details_model.dart';
import 'package:bloc_practice/data/repository/post_details_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'post_details_state.dart';

@injectable
class PostDetailsCubit extends Cubit<PostDetailsCubitState> {
  PostDetailsCubit(this.postDetailsRepository) : super(PostDetailsInitialCubitState());

  PostDetailsRepository postDetailsRepository;

  void fetchPostDetails(int postId) async {
    emit(PostDetailsLoadingCubitState());
    try {
      final postDetailsModel = await postDetailsRepository.getPostDetails(postId);
      emit(PostDetailsSuccessCubitState(postDetailsModel));
    } catch (e) {
      emit(PostDetailsFailureCubitState(e.toString()));
    }
  }
}
