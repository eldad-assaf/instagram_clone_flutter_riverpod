import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone_eldad/state/comments/models/comment.dart';
import 'package:instagram_clone_eldad/state/providers/user_info_provider.dart';
import 'package:instagram_clone_eldad/views/components/animations/small_error_animation_view.dart';
import 'package:instagram_clone_eldad/views/components/rich_two_parts_text.dart';

class CompactCommentTile extends ConsumerWidget {
  final Comment comment;
  const CompactCommentTile({super.key, required this.comment});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(userInfoModelProvider(comment.fromUserId));
    return userInfo.when(
      data: (userInfo) {
        return RichTwoPartsText(
            leftPart: userInfo.displayName, rightPart: comment.comment);
      },
      error: (error, stackTrace) {
        return const SmallErrorAnimationView();
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
