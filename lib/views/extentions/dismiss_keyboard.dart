import 'package:flutter/material.dart';

extension DismissKetboard on Widget {
  void dismissKeyboard() => FocusManager.instance.primaryFocus?.unfocus();
}
