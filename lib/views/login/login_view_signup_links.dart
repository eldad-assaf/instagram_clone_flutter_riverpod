import 'package:flutter/material.dart';
import 'package:instagram_clone_eldad/views/components/dialogs/alert_dialog_model.dart';
import 'package:instagram_clone_eldad/views/components/dialogs/mock_app_dialog.dart';
import '../components/rich_text/base_text.dart';
import '../components/rich_text/rich_text_widget.dart';
import '../constants/strings.dart';

class LoginViewSignupLinks extends StatelessWidget {
  const LoginViewSignupLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichTextWidget(
      styleForAll:
          Theme.of(context).textTheme.titleMedium?.copyWith(height: 1.5),
      texts: [
    
        BaseText.plain(
          text: Strings.pleaseReviewOur,
        ),
        BaseText.link(
          text: Strings.termsAndConditions,
          onTapped: () {
            const MockAppDialog().present(context);
          },
        ),
        BaseText.plain(
          text: Strings.andOur,
        ),
        BaseText.link(
          text: Strings.privacyPolicy,
          onTapped: () {
            const MockAppDialog().present(context);
          },
        ),
      ],
    );
  }
}
