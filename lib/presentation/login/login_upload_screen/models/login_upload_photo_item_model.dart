import 'dart:io';

class LoginUploadPhotosItemModel {
  LoginUploadPhotosItemModel(
      {required this.file,
      required this.stt,
      required this.name,
      required this.path});
  final int stt;
  final String name;
  final String path;
  final File file;
}
