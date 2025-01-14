import 'package:bloc_practice/dart_practice/depencency_injection/api_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserRepository {
  ApiService apiService;

  UserRepository(this.apiService);

  void callUserRepositoryFunction() {
    print('User Repository');
  }
}
