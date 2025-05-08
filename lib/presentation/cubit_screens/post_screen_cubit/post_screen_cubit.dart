import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_bloc.dart';
import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_event.dart';
import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_state.dart';
import 'package:bloc_practice/data/cubit/cubit_post_api/cubit/cubit_post.dart';
import 'package:bloc_practice/presentation/bloc_screens/post_screen_bloc/post_details_screen_bloc.dart';
import 'package:bloc_practice/presentation/cubit_screens/post_screen_cubit/post_details_screen_cubit.dart';
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
    // context.read<CubitPost>().fetchPost();
    // print("Api Fetch Event Called From Cubit");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CubitPost, CubitPostState>(
        builder: (context, state) {
          if(state.status == CubitPostStatus.initial){
            context.read<CubitPost>().fetchPost();
            return Center(child: Text('Loading...!'),);
          }
          else if (state.status == CubitPostStatus.loading) {
            return Center(child: CircularProgressIndicator());
          } else if (state.status == CubitPostStatus.success) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.postModel.length,
              itemBuilder: (context, index) {
                var postData = state.postModel[index];
                return Card(
                  child: ListTile(
                    title: Text(
                      postData.title.toString(),
                      maxLines: 2,
                    ),
                    subtitle: Text(
                      postData.body.toString(),
                      maxLines: 5,
                    ),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Expanded(
                        //   child: IconButton(
                        //       onPressed: () {}, icon: Icon(Icons.delete)),
                        // ),
                        // SizedBox(
                        //   height: 40,
                        // ),
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                if (state.postFavoriteList.contains(postData)) {
                                  context
                                      .read<CubitPost>()
                                      .removeFavoritePost(postItem: postData);
                                } else {
                                  context
                                      .read<CubitPost>()
                                      .addFavoritePost(postItem: postData);
                                }
                              },
                              icon: state.postFavoriteList.contains(postData) ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_outline, color: Colors.black,)),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PostDetailsScreenCubit(
                            postID: postData.id!,
                          ),
                        ),
                      );
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
