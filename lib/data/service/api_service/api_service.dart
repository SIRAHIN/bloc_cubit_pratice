import 'package:bloc_practice/data/models/post_details_model/post_details_model.dart';
import 'package:bloc_practice/data/models/post_model/post_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/posts")
  Future<HttpResponse<List<PostModel>>> getUsers();

  @GET("/posts/{postId}")
  Future<PostDetailsModel> getUserById(@Path("postId") int postId);

}
