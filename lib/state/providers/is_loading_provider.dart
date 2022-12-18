import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone_eldad/state/auth/providers/auth_state_provider.dart';
import 'package:instagram_clone_eldad/state/comments/providers/send_comment_provider.dart';
import 'package:instagram_clone_eldad/state/image_upload/providers/image_uploader_provider.dart';

final isLoadingProvider = Provider<bool>(
  (ref) {
    final authState = ref.watch(authStateProvider);
    final isUploadingProvider = ref.watch(imageUploadProvider);
    final isSendingCommentProvider = ref.watch(sendCommentProvider);

    return authState.isLoading ||
        isUploadingProvider ||
        isSendingCommentProvider;
  },
);
