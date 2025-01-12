import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'image_picker_state.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  ImagePickerCubit() : super(ImagePickerInitialState());

  final ImagePicker imagePicker = ImagePicker();
  final List<XFile> _imageList = []; // Maintain the list of selected images

  void pickImage() async {
    try {
      final XFile? image =
          await imagePicker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        _imageList.add(image); // Add the selected image to the list
        
        //emit(ImagePickerLoadedState(_imageList));
        //emit(ImagePickerLoadedState(List.from(_imageList)));
        
        //emit(ImagePickerLoadedState([..._imageList])); -> it will works if im added image int the _imageList then use this way
        
        emit(ImagePickerLoadedState(_imageList));
        
        print('Image added : $_imageList');
      } else if (_imageList.isNotEmpty) {
        print('No New Image added : $_imageList');
        emit(ImagePickerLoadedState(_imageList));
      } else {
        print('No Image Selected : $_imageList');
        emit(ImagePickerErrorState('No image selected'));
      }
    } catch (e) {
      emit(ImagePickerErrorState(e.toString()));
    }
  }
}
