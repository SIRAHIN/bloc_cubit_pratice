import 'package:bloc_practice/data/cubit/cubit_post_details/cubit/post_details_cubit.dart';
import 'package:bloc_practice/data/cubit/image_picker_cubit/cubit/image_picker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostDetailsScreenCubit extends StatefulWidget {
  final int postID;

  const PostDetailsScreenCubit({super.key, required this.postID});

  @override
  State<PostDetailsScreenCubit> createState() => _PostDetailsScreenBlocState();
}

class _PostDetailsScreenBlocState extends State<PostDetailsScreenCubit> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<PostDetailsCubit>().fetchPostDetails(widget.postID);
    print("Details Post Api Fetch Event Called From Cubit");
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<PostDetailsCubit, PostDetailsCubitState>(
          builder: (context, state) {
            if (state is PostDetailsLoadingCubitState) {
              return Text('Loading...');
            } else if (state is PostDetailsSuccessCubitState) {
              return Text(state.postDetailsModel.title);
            } else {
              return Text('Error');
            }
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}
