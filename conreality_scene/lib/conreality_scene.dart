/* This is free and unencumbered software released into the public domain. */

/// 3D polygon mesh rendering widget for Conreality live-action games.
///
/// {@canonicalFor scene.Scene}
library conreality_scene;

export 'src/scene.dart' show Scene;

/// The `conreality_scene` plugin.
abstract class ConrealityScene {
  ConrealityScene._();

  /// The current plugin version string.
  static String get version => "0.0.1";
}
