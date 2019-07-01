conreality_login
================

[![Project license](https://img.shields.io/badge/license-Public%20Domain-blue.svg)](https://unlicense.org)

A login widget for Conreality games.

Compatibility
-------------

Android and iOS both.

Installation
------------

### `pubspec.yaml`

    # See: https://github.com/conreality/conreality-widgets/tree/master/conreality_login
    conreality_login:
      git:
        url: https://github.com/conreality/conreality-widgets.git
        path: conreality_login

### `android/app/src/main/AndroidManifest.xml`

    <manifest ...
      <!-- See: https://developer.android.com/reference/android/Manifest.permission#INTERNET -->
      <uses-permission android:name="android.permission.INTERNET"/>
