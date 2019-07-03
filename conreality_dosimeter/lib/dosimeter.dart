/* This is free and unencumbered software released into the public domain. */

library conreality_dosimeter;

import 'dart:async' show Stream, StreamSubscription;

import 'package:flutter/material.dart';

class Dosimeter extends StatefulWidget {
  final String unit;
  final Stream<double> stream;
  final String fontFamily;
  final TextStyle numberStyle;
  final TextStyle unitsStyle;

  Dosimeter({Key key, this.unit = "mrem/h", this.stream, this.fontFamily, this.numberStyle, this.unitsStyle})
      : super(key: key);

  @override
  State<Dosimeter> createState() => _DosimeterState();
}

class _DosimeterState extends State<Dosimeter> {
  StreamSubscription<double> _subscription;
  double _measurement = 0;

  @override
  void initState() {
    super.initState();
    _subscription = widget.stream.listen((double measurement) {
      setState(() {
        _measurement = measurement;
      });
    });
  }

  @override
  void dispose() async {
    super.dispose();
    await _subscription?.cancel();
  }

  @override
  Widget build(final BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle numberStyle =
        widget.numberStyle ?? theme.textTheme.title.copyWith(fontFamily: widget.fontFamily, fontSize: 56);
    final TextStyle unitsStyle =
        widget.unitsStyle ?? theme.textTheme.subtitle.copyWith(fontFamily: widget.fontFamily);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(_measurement.toString(), style: numberStyle),
        Text(widget.unit, style: unitsStyle),
      ],
    );
  }
}
