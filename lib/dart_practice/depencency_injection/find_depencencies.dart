import 'package:bloc_practice/dart_practice/depencency_injection/api_service.dart';
import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/dart_practice/depencency_injection/test_service.dart';
import 'package:bloc_practice/dart_practice/depencency_injection/user_repository.dart';

class FindDepencencies {
  final userRepo = getIt<UserRepository>();
  final apiService = getIt<ApiService>();
  final testService = getIt<TestService>().dataList;

  void getDependencyofUserRepo() {
    userRepo.callUserRepositoryFunction();
    userRepo.apiService.callApiServiceFunction();
  }

  void getDependencyofApiService() {
    apiService.callApiServiceFunction();
  }
}
