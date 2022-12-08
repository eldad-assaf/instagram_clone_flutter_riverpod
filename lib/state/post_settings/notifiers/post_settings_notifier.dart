import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone_eldad/state/post_settings/models/post_settings.dart';

class PostSettingNotifier extends StateNotifier<Map<PostSetting, bool>> {
  PostSettingNotifier()
      : super(UnmodifiableMapView({
          for (final setting in PostSetting.values) setting: true,
        }));

  void setSettings(
    PostSetting setting,
    bool value,
  ) {
    // get the existing value
    final exsistingValue = state[setting];
    if (exsistingValue == null || exsistingValue == value) {
      return;
    }

    state = Map.unmodifiable(Map.from(state)..[setting] = value);
  }
}
