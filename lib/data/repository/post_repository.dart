import 'dart:convert';
import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/data/data_provider/post_data_provider.dart';
import 'package:bloc_practice/data/models/post_model/post_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class PostRepository {
  final PostDataProvider postDataProvider = getIt<PostDataProvider>();
  PostRepository();

  List<PostModel> postModel = [];

  Future<List<PostModel>> fetchtedPost() async {
    try {
      final userData = await postDataProvider.getPosts();

      print("User Data :$userData");

      List data = jsonDecode(userData);

      for (var element in data) {
        postModel.add(PostModel.fromJson(element));
      }

      return postModel;
    } catch (e) {
      throw Exception(e);
    }
  }
}
