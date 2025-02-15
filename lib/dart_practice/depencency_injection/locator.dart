import 'package:bloc_practice/dart_practice/depencency_injection/locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);

// == Auto Register ApiService as a singleton (one instance for the whole app)
// using injectable package == //
// getIt.registerSingleton<ApiService>(ApiService());