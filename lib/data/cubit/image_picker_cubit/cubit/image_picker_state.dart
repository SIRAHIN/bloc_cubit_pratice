part of 'image_picker_cubit.dart';

@immutable
sealed class ImagePickerState {}

final class ImagePickerInitialState extends ImagePickerState {}

final class ImagePickerLoadedState extends ImagePickerState {
  final List<XFile> image;

  ImagePickerLoadedState(this.image);
}

final class ImagePickerErrorState extends ImagePickerState {
  final String message;

  ImagePickerErrorState(this.message);
}
