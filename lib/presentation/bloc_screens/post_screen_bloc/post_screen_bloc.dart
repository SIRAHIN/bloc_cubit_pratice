import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_bloc.dart';
import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_event.dart';
import 'package:bloc_practice/data/bloc/bloc_post_api/api_calling_state.dart';
import 'package:bloc_practice/presentation/bloc_screens/post_screen_bloc/post_details_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreenBloc extends StatefulWidget {
  const PostScreenBloc({super.key});

  @override
  State<PostScreenBloc> createState() => _PostScreenBlocState();
}

class _PostScreenBlocState extends State<PostScreenBloc> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<ApiCallingBloc>().add(ApiFetchEvent());
    print("Api Fetch Event Called");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ApiCallingBloc, ApiCallingState>(
        builder: (context, state) {
          if (state is ApiCallingLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is ApiCallingSuccess) {
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetailsScreenBloc(postID: postData.id!,)));
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
