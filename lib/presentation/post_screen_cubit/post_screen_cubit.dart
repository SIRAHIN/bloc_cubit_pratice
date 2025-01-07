import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_bloc.dart';
import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_event.dart';
import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_state.dart';
import 'package:bloc_practice/data/cubit/cubit_post_api/cubit/cubit_post.dart';
import 'package:bloc_practice/presentation/post_screen_bloc/post_details_screen_bloc.dart';
import 'package:bloc_practice/presentation/post_screen_cubit/post_details_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreenCubit extends StatefulWidget {
  const PostScreenCubit({super.key});

  @override
  State<PostScreenCubit> createState() => _PostScreenBlocState();
}

class _PostScreenBlocState extends State<PostScreenCubit> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<CubitPost>().fetchPost();
    print("Api Fetch Event Called From Cubit");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CubitPost, CubitPostState>(
        builder: (context, state) {
          if (state is CubitPostLoadingState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CubitPostSuccessState) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.postModel.length,
              itemBuilder: (context, index) {
                var postData = state.postModel[index];
                return Card(
                  child: ListTile(
                    title: Text(postData.title.toString()),
                    subtitle: Text(postData.body.toString()),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetailsScreenCubit(postID: postData.id!,)));
                    },
                  ),
                );
              },
            );
          } else {
            return Center(child: Text('No Data'));
          }
        },
      ),
    );
  }
}
