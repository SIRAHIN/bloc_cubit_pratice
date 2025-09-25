import 'package:bloc/bloc.dart';
import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/data/models/reverseGeo_model/place_response.dart';
import 'package:bloc_practice/data/repository/reverseGeo_repository.dart';
import 'package:bloc_practice/presentation/bloc_screens/map_screen/map_service/map_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reverse_geo_event.dart';
part 'reverse_geo_state.dart';
part 'reverse_geo_bloc.freezed.dart';

@injectable
class ReverseGeoBloc extends Bloc<ReverseGeoEvent, ReverseGeoState> {
  ReversegeoRepository repo;
  ReverseGeoBloc(this.repo) : super(_Initial()) {
    on<ReverseGeoEvent>((event, emit) async {
      emit(ReverseGeoState.loading());
      // TODO: implement event handlera
      await event.map(getPlaceInfo: (req) async {
        final response = await repo.getPlaceInfo(lat: req.lat, lon: req.lon);
        response.fold((l) => emit(ReverseGeoState.error()), (r) {

          getIt<MapService>().panelController.show();

          emit(ReverseGeoState.loaded(placeInfo: r));
        });
      });
    });
  }
}
