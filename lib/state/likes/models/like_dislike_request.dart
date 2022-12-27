import 'package:flutter/foundation.dart' show immutable;
import 'package:instagram_clone_eldad/state/posts/typedefs/user_id.dart';

import '../../posts/typedefs/post_id.dart';

@immutable
class LikesDislikeRequest {
  final PostId postId;
  final UserId likedBy;

  const LikesDislikeRequest({required this.postId, required this.likedBy});
}
