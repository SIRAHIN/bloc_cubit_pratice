import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_sheet_event.dart';
part 'bottom_sheet_state.dart';
part 'bottom_sheet_bloc.freezed.dart';

class BottomSheetBloc extends Bloc<BottomSheetEvent, BottomSheetState> {
  BottomSheetBloc() : super(_Initial()) {
    on<BottomSheetEvent>((event, emit) async {
      // TODO: implement event handler
      await event.map(opneBottomSheet: (_) {
        emit(BottomSheetState.isOpen());
      }, closeBottomSheet: (_) {
        emit(BottomSheetState.isClose());
      });
    });
  }
}
