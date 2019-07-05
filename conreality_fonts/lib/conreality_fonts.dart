/* This is free and unencumbered software released into the public domain. */

/// Font assets (in particular, the B612 font) for Conreality live-action
/// games.
///
/// {@canonicalFor b612.B612}
/// {@canonicalFor b612_mono.B612Mono}
library conreality_fonts;

export 'src/b612.dart' show B612;
export 'src/b612_mono.dart' show B612Mono;

/// The `conreality_fonts` plugin.
abstract class ConrealityFonts {
  ConrealityFonts._();

  /// The current plugin version string.
  static String get version => "1.0.2";
}
