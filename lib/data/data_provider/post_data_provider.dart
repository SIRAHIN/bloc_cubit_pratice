import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/data/models/post_model/post_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:retrofit/dio.dart';

import '../service/api_service/api_service.dart';

@injectable
class PostDataProvider {
  Future<List<PostModel>> getPosts() async {

    try {

      // For Http Request //
      // final respone = await http
      //     .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      // if (respone.statusCode == 200) {
      //   return respone.body;
      // } else {
      //   throw Exception('Failed to load post');
      // }

      // Retrofit Request //
      Dio dio = Dio();
      dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
      final service = ApiService(dio);
      final HttpResponse<List<PostModel>> response = await service.getUsers();
      print("Response Status Code : ${response.response.statusCode}");
      return response.data;
      
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
