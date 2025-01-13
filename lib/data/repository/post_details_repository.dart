import 'dart:convert';

import 'package:bloc_practice/data/data_provider/post_details_provider.dart';
import 'package:bloc_practice/data/models/post_details_model/post_details_model.dart';

class PostDetailsRepository {
  final PostDetailsProvider postDetailsProvider;

  PostDetailsRepository({required this.postDetailsProvider});

  Future<PostDetailsModel> getPostDetails(int postId) async {
    try {
      var detailsData = await postDetailsProvider.getPostDetails(postId);
      return PostDetailsModel.fromJson(jsonDecode(detailsData));
    } catch (e) {
      // Handle exceptions by rethrowing or returning a default value
      print("Error fetching post details: $e");
      throw Exception("Failed to fetch post details");
    }
  }
}
