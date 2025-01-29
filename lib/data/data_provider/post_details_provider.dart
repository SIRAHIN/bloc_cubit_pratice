import 'package:bloc_practice/data/models/post_details_model/post_details_model.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class PostDetailsProvider {
  Future<String> getPostDetails(int postId) async {
       try {
      final respone = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId'));
      if (respone.statusCode == 200) {
        return respone.body;
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}