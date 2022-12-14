import 'dart:io';

import 'package:flutter/foundation.dart' show immutable;
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone_eldad/state/image_upload/extensions/to_file.dart';

@immutable
class ImagePickerHelper {
  static final ImagePicker _imagePicker = ImagePicker();

  static Future<File?> pickImageFromGallery() async =>
      _imagePicker.pickImage(source: ImageSource.gallery).toFile();

  static Future<File?> pickVideoFromGallery() async =>
      _imagePicker.pickVideo(source: ImageSource.gallery).toFile();
}
