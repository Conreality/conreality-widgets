/* This is free and unencumbered software released into the public domain. */

import 'package:flutter/material.dart' show FontStyle, FontWeight, TextStyle;

/// The B612 font.
abstract class B612 {
  /// The current version number of the packaged font.
  static String get version => "1.008";

  /// The [FontFamily] identifier for this font.
  static String get fontFamily => "packages/conreality_fonts/B612";

  /// The normal [TextStyle] for this font.
  static TextStyle get normal => TextStyle(fontFamily: fontFamily);

  /// The italic [TextStyle] for this font.
  static TextStyle get italic =>
      TextStyle(fontFamily: fontFamily, fontStyle: FontStyle.italic);

  /// The bold [TextStyle] for this font.
  static TextStyle get bold =>
      TextStyle(fontFamily: fontFamily, fontWeight: FontWeight.bold);

  /// The combined bold and italic [TextStyle] for this font.
  static TextStyle get boldItalic => TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic);
}
