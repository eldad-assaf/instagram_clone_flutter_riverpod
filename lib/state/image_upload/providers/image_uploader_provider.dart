import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone_eldad/state/image_upload/notifiers/image_upload_notifier.dart';
import 'package:instagram_clone_eldad/state/image_upload/typedefs/is_lodaing.dart';

final imageUploadProvider =
    StateNotifierProvider<ImageUploadNotifier, IsLoading>(
        (ref) => ImageUploadNotifier());
