part of 'bottom_sheet_bloc.dart';

@freezed
class BottomSheetEvent with _$BottomSheetEvent {
  const factory BottomSheetEvent.opneBottomSheet() = _OpenBottomSheet;
   const factory BottomSheetEvent.closeBottomSheet() = _CloseBottomSheet;
}