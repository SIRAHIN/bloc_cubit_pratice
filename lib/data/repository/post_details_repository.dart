
import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/data/data_provider/post_details_provider.dart';
import 'package:bloc_practice/data/models/post_details_model/post_details_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class PostDetailsRepository {
  final PostDetailsProvider postDetailsProvider = getIt<PostDetailsProvider>();

  PostDetailsRepository();

  Future<PostDetailsModel> getPostDetails(int postId) async {
    try {
      var detailsData = await postDetailsProvider.getPostDetails(postId);
      // For Http Request //
      //return PostDetailsModel.fromJson(jsonDecode(detailsData));
      
      // Retrofit Request //
      return detailsData;
    } catch (e) {
      // Handle exceptions by rethrowing or returning a default value
      print("Error fetching post details: $e");
      throw Exception("Failed to fetch post details");
    }
  }
}
