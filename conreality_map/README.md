conreality_map
==============

[![Project license](https://img.shields.io/badge/license-Public%20Domain-blue.svg)](https://unlicense.org)

Game map and marker widgets for Conreality live-action games.

Compatibility
-------------

Android and iOS both.

Examples
--------

### Importing the package

```dart
import 'package:conreality_map/conreality_map.dart';
```

Installation
------------

### `pubspec.yaml` using Git

    dependencies:
      # See: https://github.com/conreality/conreality-widgets/tree/master/conreality_map
      conreality_map:
        git:
          url: https://github.com/conreality/conreality-widgets.git
          path: conreality_map

### `android/app/src/main/AndroidManifest.xml`

    <manifest ...
      <!-- See: https://developer.android.com/reference/android/Manifest.permission#ACCESS_FINE_LOCATION -->
      <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>

    <manifest ...
      <application ...
        <meta-data android:name="com.google.android.geo.API_KEY" android:value="YOUR KEY HERE"/>

### `ios/Runner/AppDelegate.swift`

    --- a/ios/Runner/AppDelegate.swift
    +++ b/ios/Runner/AppDelegate.swift
    @@ -1,5 +1,6 @@
     import UIKit
     import Flutter
    +import GoogleMaps
    
     @UIApplicationMain
     @objc class AppDelegate: FlutterAppDelegate {
    @@ -7,6 +8,7 @@ import Flutter
         _ application: UIApplication,
         didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
       ) -> Bool {
    +    GMSServices.provideAPIKey("YOUR KEY HERE") // TODO
         GeneratedPluginRegistrant.register(with: self)
         return super.application(application, didFinishLaunchingWithOptions: launchOptions)
       }

### `ios/Runner/Info.plist`

    <plist ...
      <dict ...
        <key>io.flutter.embedded_views_preview</key>
        <true/>
