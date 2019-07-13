/* This is free and unencumbered software released into the public domain. */

/// Icon assets for Conreality live-action games.
library conreality_icons;

import 'package:flutter/material.dart' show Icons, IconData;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart'
    show MdiIcons;

/// The `conreality_icons` plugin.
abstract class ConrealityIcons {
  ConrealityIcons._();

  /// The current plugin version string.
  static String get version => "1.0.3";

  static const IconData battery = MdiIcons.battery;
  static const IconData beacon = MdiIcons.radioTower; // TODO: better icon
  static const IconData camera = MdiIcons.cameraEnhance;
  static const IconData chat = MdiIcons.chat;
  static const IconData compass = MdiIcons.compassOutline;
  static const IconData countdown = MdiIcons.timer;
  static const IconData detector = MdiIcons.radar; // TODO: better icon
  static const IconData dosimeter = MdiIcons.radioactive;
  static const IconData edgeDetection =
      MdiIcons.vectorPolyline; // TODO: better icon?
  static const IconData faceDetection = MdiIcons.face;
  static const IconData faceRecognition = MdiIcons.faceRecognition;
  static const IconData filter = MdiIcons.imageFilter;
  static const IconData font = MdiIcons.formatFont;
  static const IconData gamepad = MdiIcons.gamepadVariant;
  static const IconData gps = MdiIcons.crosshairsGps;
  static const IconData headphones = MdiIcons.headphones;
  static const IconData headset = MdiIcons.headset;
  static const IconData headsetOff = MdiIcons.headsetOff;
  static const IconData humidity = MdiIcons.waterPercent;
  static const IconData icon = MdiIcons.emoticonCoolOutline;
  static const IconData joystick = MdiIcons.cameraControl;
  static const IconData login = MdiIcons.login;
  static const IconData logo = MdiIcons.watermark; // TODO: better icon?
  static const IconData map = MdiIcons.map;
  static const IconData microphone = MdiIcons.microphone;
  static const IconData motion = MdiIcons.motionSensor;
  static const IconData nfc = MdiIcons.nfcVariant;
  static const IconData objectRecognition =
      MdiIcons.vectorEllipse; // TODO: better icon?
  static const IconData objectTracking = MdiIcons.goKartTrack;
  static const IconData plugin = MdiIcons.videoInputComponent;
  static const IconData pulse = MdiIcons.heartPulse;
  static const IconData replay = MdiIcons.mapClock;
  static const IconData scene = Icons.threed_rotation;
  static const IconData script = MdiIcons.script;
  static const IconData sensor = MdiIcons.leak;
  static const IconData temperature = MdiIcons.temperatureCelsius;
  static const IconData tracker = MdiIcons.radar;
  static const IconData video = MdiIcons.video;
  static const IconData widget = MdiIcons.widgets;

  /// Returns a map of all icon names to icon data.
  static Map<String, IconData> toMap() {
    return <String, IconData>{
      'battery': battery,
      'beacon': beacon,
      'camera': camera,
      'chat': chat,
      'compass': compass,
      'countdown': countdown,
      'detector': detector,
      'dosimeter': dosimeter,
      'edgeDetection': edgeDetection,
      'faceDetection': faceDetection,
      'faceRecognition': faceRecognition,
      'filter': filter,
      'font': font,
      'gamepad': gamepad,
      'gps': gps,
      'headphones': headphones,
      'headset': headset,
      'headsetOff': headsetOff,
      'humidity': humidity,
      'icon': icon,
      'joystick': joystick,
      'login': login,
      'logo': logo,
      'map': map,
      'microphone': microphone,
      'motion': motion,
      'nfc': nfc,
      'objectRecognition': objectRecognition,
      'objectTracking': objectTracking,
      'plugin': plugin,
      'pulse': pulse,
      'replay': replay,
      'scene': scene,
      'script': script,
      'sensor': sensor,
      'temperature': temperature,
      'tracker': tracker,
      'video': video,
      'widget': widget,
    };
  }
}
