import 'dart:io';

import 'package:bloc_practice/data/cubit/image_picker_cubit/cubit/image_picker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ImagePickerCubitScreen extends StatelessWidget {
  const ImagePickerCubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ImagePickerCubit, ImagePickerState>(
              builder: (context, state) {
                if (state is ImagePickerInitialState) {
                  return Center(
                    child: Text('No images selected yet'),
                  );
                } else if (state is ImagePickerLoadedState) {
                  return GridView.builder(
                    padding: EdgeInsets.all(8.0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: state.image.length,
                    itemBuilder: (context, index) {
                      return Image.file(
                        File(state.image[index].path), // Display the selected images
                        fit: BoxFit.cover,
                      );
                    },
                  );
                } else if (state is ImagePickerErrorState) {
                  return Center(
                    child: Text(state.message),
                  );
                }
                return SizedBox();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                context.read<ImagePickerCubit>().pickImage(); // Trigger the image picker
              },
              child: Text('Pick Image'),
            ),
          ),
        ],
      ),
    );
  }
}
