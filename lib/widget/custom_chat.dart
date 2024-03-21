import 'package:flutter/widgets.dart';

class ChatMessage {
  ChatMessage._();

  static const _kFontFam = 'ChatMessage';
  static const String? _kFontPkg = null;

  static const IconData chat =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chatEmpty =
      IconData(0xf0e6, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
