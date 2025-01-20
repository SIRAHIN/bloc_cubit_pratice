// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'api_service.dart' as _i738;
import 'test_service.dart' as _i48;
import 'user_repository.dart' as _i537;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i738.ApiService>(() => _i738.ApiService());
  gh.singleton<_i48.TestService>(() => _i48.TestService());
  gh.factory<_i537.UserRepository>(
      () => _i537.UserRepository(gh<_i738.ApiService>()));
  return getIt;
}
