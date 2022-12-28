import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../image_upload/typedefs/is_lodaing.dart';
import '../notifiers/delete_post_state_notifier.dart';

final deletePostProvider =
    StateNotifierProvider<DeletePostStateNotifier, IsLoading>(
  (ref) => DeletePostStateNotifier(),
);