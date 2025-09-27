import 'package:bloc_practice/data/repository/post_repository.dart';
import 'package:injectable/injectable.dart';

// For Extends Method //
// abstract class ApiServiceTest {
//   PostRepository postRepository;
//   ApiServiceTest(this.postRepository);
//   Future<String> fetchData();
// }

// @LazySingleton(as: ApiServiceTest)
// class ApiServiceTestImp extends ApiServiceTest {
//   ApiServiceTestImp(super.postRepository);
//   @override
//   Future<String> fetchData() {
//     // Simulate a network call with a delay
//     postRepository.postDataProvider.getPosts();
//     return Future.delayed(Duration(seconds: 2), () => 'Fetched Data');
//   }
// }

// For Implements Method //
abstract class ApiServiceTest {
  ApiServiceTest();
  Future<String> fetchData();
}

@LazySingleton(as: ApiServiceTest)
class ApiServiceTestImp implements ApiServiceTest {
  PostRepository postRepository;
  ApiServiceTestImp(this.postRepository);
  @override
  Future<String> fetchData() {
    // Simulate a network call with a delay
    postRepository.postDataProvider.getPosts();
    return Future.delayed(Duration(seconds: 2), () => 'Fetched Data');
  }
}
