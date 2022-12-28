import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_clone_eldad/state/comments/models/comment.dart';

import '../../posts/models/post.dart';


@immutable
class PostWithComments {
  final Post post;
  final Iterable<Comment> comments;

  const PostWithComments({
    required this.post,
    required this.comments,
  });

  @override
  bool operator ==(covariant PostWithComments other) =>
      post == other.post &&
      const IterableEquality().equals( // 15:38 min
        comments,
        other.comments,
      );

  @override
  int get hashCode => Object.hashAll([
        post,
        comments,
      ]);
}