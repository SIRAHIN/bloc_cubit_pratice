class PostDetailsEvent {}

class PostDetailsFetchEvent extends PostDetailsEvent {
  final int postId;

  PostDetailsFetchEvent(this.postId);
}