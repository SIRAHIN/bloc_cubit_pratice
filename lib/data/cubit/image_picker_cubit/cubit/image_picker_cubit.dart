import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'image_picker_state.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  ImagePickerCubit() : super(ImagePickerInitialState());

  final ImagePicker _imagePicker = ImagePicker();
  final List<XFile> _imageList = []; // Maintain the list of selected images

  void pickImage() async {
    try {
      final XFile? image =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        _imageList.add(image); // Add the selected image to the list
        emit(ImagePickerLoadedState(_imageList)); // Emit a new state with the updated list
      } else {
        emit(ImagePickerErrorState('No image selected'));
      }
    } catch (e) {
      emit(ImagePickerErrorState(e.toString()));
    }
  }
}
