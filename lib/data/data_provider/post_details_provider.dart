import 'package:bloc_practice/data/models/post_details_model/post_details_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../service/api_service/api_service.dart';

@injectable
class PostDetailsProvider {
  Future<PostDetailsModel> getPostDetails(int postId) async {
       try {

      // For Http Request //
      // final respone = await http
      //     .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId'));
      // if (respone.statusCode == 200) {
      //   return respone.body;
      // } else {
      //   throw Exception('Failed to load post');
      // }

      // Retrofit Request //
      Dio dio = Dio();
      dio.options.baseUrl = 'https://jsonplaceholder.typicode.com/';
      final service = ApiService(dio);
      final response = await service.getUserById(postId);
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}