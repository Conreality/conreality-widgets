/* This is free and unencumbered software released into the public domain. */

library conreality_tracker;

import 'dart:async' show Stream, StreamSubscription;

import 'package:flutter/material.dart';

class DistanceTracker extends StatefulWidget {
  final String unit;
  final Stream<double> stream;
  final String fontFamily;
  final TextStyle numberStyle;
  final TextStyle unitsStyle;

  DistanceTracker({Key key, this.unit = "meters", this.stream, this.fontFamily, this.numberStyle, this.unitsStyle})
      : super(key: key);

  @override
  State<DistanceTracker> createState() => _DistanceTrackerState();
}

class _DistanceTrackerState extends State<DistanceTracker> {
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
