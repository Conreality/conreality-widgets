/* This is free and unencumbered software released into the public domain. */

import 'package:flutter/material.dart' show FontStyle, FontWeight, TextStyle;

abstract class B612 {
  static String get version => "1.008";

  static String get fontFamily => "packages/conreality_fonts/B612";

  static TextStyle get normal => TextStyle(fontFamily: fontFamily);
  static TextStyle get italic => TextStyle(fontFamily: fontFamily, fontStyle: FontStyle.italic);
  static TextStyle get bold => TextStyle(fontFamily: fontFamily, fontWeight: FontWeight.bold);
  static TextStyle get boldItalic => TextStyle(fontFamily: fontFamily, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
}
