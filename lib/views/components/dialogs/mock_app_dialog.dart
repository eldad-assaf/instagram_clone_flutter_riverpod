import 'package:flutter/foundation.dart' show immutable;
import 'package:instagram_clone_eldad/views/components/dialogs/alert_dialog_model.dart';

@immutable
class MockAppDialog extends AlertDialogModel {
  const MockAppDialog()
      : super(
          title: 'Mock App',
          message: 'This app has no real Terms or policies  :-)',
          buttons: const {},
        );
}
