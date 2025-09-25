part of 'bottom_sheet_bloc.dart';

@freezed
class BottomSheetState with _$BottomSheetState {
  const factory BottomSheetState.initial() = _Initial;
  const factory BottomSheetState.isOpen() = _IsOpen;
   const factory BottomSheetState.isClose() = _IsClose;
}
