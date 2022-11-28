import 'package:flutter/material.dart';
import 'package:instagram_clone_eldad/views/components/rich_text/base_text.dart';
import 'package:instagram_clone_eldad/views/components/rich_text/rich_text_widget.dart';

import '../constants/strings.dart';

class LoginViewSignupLink extends StatelessWidget {
  const LoginViewSignupLink({super.key});

  @override
  Widget build(BuildContext context) {
    return RichTextWidget(
      styleForAll: Theme.of(context).textTheme.subtitle1?.copyWith(height: 1.5),
      texts: [
        BaseText.plain(
          text: Strings.dontHaveAnAccount,
        ),
        BaseText.plain(
          text: Strings.signUpOn,
        ),
        BaseText.link(
          text: Strings.facebook,
          onTapped: () {
            Uri.parse(
              Strings.facebookSignupUrl,
            );
          },
        ),
        BaseText.plain(
          text: Strings.orCreateAnAccountOn,
        ),
        BaseText.link(
          text: Strings.google,
          onTapped: () {
            Uri.parse(
              Strings.googleSignupUrl,
            );
          },
        )
      ],
    );
  }
}
