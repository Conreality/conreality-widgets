/* This is free and unencumbered software released into the public domain. */

/// Official logo assets for Conreality live-action games.
library conreality_logo;

import 'package:flutter/material.dart'
    show
        BuildContext,
        FlutterLogo,
        IconTheme,
        IconThemeData,
        Key,
        StatelessWidget,
        Widget;

/// The `conreality_logo` plugin bundles the Conreality logo, in widget form.
///
/// This widget respects the [IconTheme].
class ConrealityLogo extends StatelessWidget {
  /// Creates a widget that paints the Conreality logo.
  ///
  /// The [size] defaults to the value given by the current [IconTheme].
  const ConrealityLogo({Key key, this.size}) : super(key: key);

  /// The size of the logo in logical pixels.
  ///
  /// The logo will be fit into a square this size.
  ///
  /// Defaults to the current [IconTheme] size, if any. If there is no
  /// [IconTheme], or it does not specify an explicit size, then it defaults to
  /// 24.
  final double size;

  /// The current plugin version string.
  static String get version => "0.0.1";

  @override
  Widget build(final BuildContext context) {
    final IconThemeData iconTheme = IconTheme.of(context);
    final double iconSize = size ?? iconTheme.size;
    return FlutterLogo(size: iconSize); // TODO
  }
}
