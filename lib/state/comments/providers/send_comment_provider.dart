import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone_eldad/state/comments/notifiers/send_comment_notifier.dart';
import 'package:instagram_clone_eldad/state/image_upload/typedefs/is_lodaing.dart';

final sendCommentProvider =
    StateNotifierProvider<SendCommentNotifier, IsLoading>(
  (ref) {
    return SendCommentNotifier();
  },
);
