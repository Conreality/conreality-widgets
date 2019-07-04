conreality_camera
=================

[![Project license](https://img.shields.io/badge/license-Public%20Domain-blue.svg)](https://unlicense.org)

An augmented-reality camera widget for Conreality live-action games.

Compatibility
-------------

Android and iOS both.

Examples
--------

### Importing the package

```dart
import 'package:conreality_camera/conreality_camera.dart';
```

Installation
------------

### `pubspec.yaml` using Git

    dependencies:
      # See: https://github.com/conreality/conreality-widgets/tree/master/conreality_camera
      conreality_camera:
        git:
          url: https://github.com/conreality/conreality-widgets.git
          path: conreality_camera

### `android/app/build.gradle`

    android {
        defaultConfig {
            minSdkVersion 21 // Android 5.0 (Lollipop)

### `android/app/src/main/AndroidManifest.xml`

    <manifest ...
      <!-- See: https://developer.android.com/reference/android/Manifest.permission#CAMERA -->
      <uses-permission android:name="android.permission.CAMERA"/>

### `ios/Runner/Info.plist`

    <plist ...
      <dict ...
        <key>NSCameraUsageDescription</key>
        <string>Can I use the camera please?</string>
        <key>NSMicrophoneUsageDescription</key>
        <string>Can I use the mic please?</string>
