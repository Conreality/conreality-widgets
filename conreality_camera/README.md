conreality_camera
=================

[![Project license](https://img.shields.io/badge/license-Public%20Domain-blue.svg)](https://unlicense.org)

An augmented-reality camera widget for Conreality games.

Compatibility
-------------

Android and iOS both.

Installation
------------

### `pubspec.yaml`

    # See: https://github.com/conreality/conreality-widgets/tree/master/conreality_camera
    conreality_camera:
      git:
        url: https://github.com/conreality/conreality-widgets.git
        path: conreality_camera

### `ios/Runner/Info.plist`

    <key>NSCameraUsageDescription</key>
    <string>Can I use the camera please?</string>
    <key>NSMicrophoneUsageDescription</key>
    <string>Can I use the mic please?</string>
