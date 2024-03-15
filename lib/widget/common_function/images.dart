import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

Future<File?> pickImage() async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  return image != null ? File(image.path) : null;
}

Future<ui.Image> loadImage(String imagePath) async {
  ByteData data = await rootBundle.load(imagePath);
  Uint8List bytes = data.buffer.asUint8List();
  return await decodeImageFromList(bytes);
}
