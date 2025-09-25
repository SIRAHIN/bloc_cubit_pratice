// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/bloc/bloc/reverse_geo_bloc.dart' as _i389;
import '../../data/cubit/cubit_post_api/cubit/cubit_post.dart' as _i26;
import '../../data/cubit/cubit_post_details/cubit/post_details_cubit.dart'
    as _i5;
import '../../data/cubit/pagination_cubit/pagination_cubit.dart' as _i709;
import '../../data/data_provider/post_data_provider.dart' as _i588;
import '../../data/data_provider/post_details_provider.dart' as _i438;
import '../../data/repository/pagination_repository.dart' as _i459;
import '../../data/repository/post_details_repository.dart' as _i61;
import '../../data/repository/post_repository.dart' as _i180;
import '../../data/repository/reverseGeo_repository.dart' as _i414;
import '../../data/service/internet_service/internet_service.dart' as _i872;
import '../../presentation/bloc_screens/map_screen/map_service/map_service.dart'
    as _i84;
import '../services/api_service.dart' as _i137;
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
  gh.factory<_i61.PostDetailsRepository>(() => _i61.PostDetailsRepository());
  gh.factory<_i588.PostDataProvider>(() => _i588.PostDataProvider());
  gh.factory<_i438.PostDetailsProvider>(() => _i438.PostDetailsProvider());
  gh.singleton<_i48.TestService>(() => _i48.TestService());
  gh.singleton<_i872.InternetService>(() => _i872.InternetService());
  gh.singleton<_i84.MapService>(() => _i84.MapService());
  gh.lazySingleton<_i459.PaginationRepository>(
      () => _i459.PaginationRepository());
  gh.lazySingleton<_i414.ReversegeoRepository>(
      () => _i414.ReversegeoRepository());
  gh.factory<_i537.UserRepository>(
      () => _i537.UserRepository(gh<_i738.ApiService>()));
  gh.factory<_i5.PostDetailsCubit>(
      () => _i5.PostDetailsCubit(gh<_i61.PostDetailsRepository>()));
  gh.factory<_i709.PaginationCubit>(
      () => _i709.PaginationCubit(gh<_i459.PaginationRepository>()));
  gh.factory<_i389.ReverseGeoBloc>(
      () => _i389.ReverseGeoBloc(gh<_i414.ReversegeoRepository>()));
  gh.factory<_i180.PostRepository>(
      () => _i180.PostRepository(gh<_i588.PostDataProvider>()));
  gh.lazySingleton<_i137.ApiServiceTest>(
      () => _i137.ApiServiceTestImp(gh<_i180.PostRepository>()));
  gh.factory<_i26.CubitPost>(() => _i26.CubitPost(gh<_i180.PostRepository>()));
  return getIt;
}
