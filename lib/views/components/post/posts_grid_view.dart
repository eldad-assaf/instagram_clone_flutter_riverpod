import 'package:flutter/material.dart';
import 'package:instagram_clone_eldad/views/components/post/post_thumbnail_view.dart';
import 'package:instagram_clone_eldad/views/post_details/post_details_view.dart';
import '../../../state/posts/models/post.dart';

class PostsGridView extends StatelessWidget {
  final Iterable<Post> posts;

  const PostsGridView({
    Key? key,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts.elementAt(index);
        return PostThumbnailView(
          post: post,
          onTapped: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PostDetailsView(post: post)));
          },
        );
      },
    );
  }
}
