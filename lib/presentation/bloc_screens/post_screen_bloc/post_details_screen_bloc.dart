import 'package:bloc_practice/data/bloc/bloc_post_details/post_details_bloc.dart';
import 'package:bloc_practice/data/bloc/bloc_post_details/post_details_event.dart';
import 'package:bloc_practice/data/bloc/bloc_post_details/post_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostDetailsScreenBloc extends StatefulWidget {
  final int postID;

  const PostDetailsScreenBloc({super.key, required this.postID});

  @override
  State<PostDetailsScreenBloc> createState() => _PostDetailsScreenBlocState();
}

class _PostDetailsScreenBlocState extends State<PostDetailsScreenBloc> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<PostDetailsBloc>().add(PostDetailsFetchEvent(widget.postID));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<PostDetailsBloc, PostDetailsState>(
          builder: (context, state) {
            if (state is PostDetailsLoading) {
              return Text('Loading...');
            } else if (state is PostDetailsSuccess) {
              return Text('${state.postModel.title}');
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
