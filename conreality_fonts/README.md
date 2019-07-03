conreality_fonts
================

[![Project license](https://img.shields.io/badge/license-Public%20Domain-blue.svg)](https://unlicense.org)
[![Pub package](https://img.shields.io/pub/v/conreality_fonts.svg)](https://pub.dartlang.org/packages/conreality_fonts)
[![Dartdoc reference](https://img.shields.io/badge/dartdoc-reference-blue.svg)](https://pub.dartlang.org/documentation/conreality_fonts/latest/)

Font assets (B612 and B612 Mono) for Conreality games.

Compatibility
-------------

Android and iOS both.

Examples
--------

### Importing the package

```dart
import 'package:conreality_fonts/conreality_fonts.dart';
```

### Using the B612 font

```dart
Text("Hello, world!", style: B612.normal)
```

### Using the B612 Mono font

```dart
Text("Hello, world!", style: B612Mono.normal)
```

Installation
------------

### `pubspec.yaml`

    # See: https://github.com/conreality/conreality-widgets/tree/master/conreality_fonts
    conreality_fonts:
      git:
        url: https://github.com/conreality/conreality-widgets.git
        path: conreality_fonts
