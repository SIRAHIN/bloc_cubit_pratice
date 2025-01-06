import 'package:http/http.dart' as http;

class PostDataProvider {
  Future<String> getPosts() async {

    try {
      final respone = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
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
