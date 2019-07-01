/* This is free and unencumbered software released into the public domain. */

library conreality_tracker;

import 'dart:async' show StreamSubscription;

import 'package:flutter/material.dart';

class DistanceTracker extends StatefulWidget {
  final String unit;
  final Stream<double> stream;
  final TextStyle style;

  DistanceTracker({Key key, this.unit = "meters", this.stream, this.style}) : super(key: key);

  @override
  State<DistanceTracker> createState() => _DistanceTrackerState();
}

class _DistanceTrackerState extends State<DistanceTracker> {
  StreamSubscription<double> _subscription;
  double _measurement = 0;

  @override
  void initState() {
    super.initState();
    _subscription = widget.stream.listen((double) {
      setState(() {
        _measurement = _measurement + 1; // TODO
      });
    });
  }

  @override
  void dispose() async {
    super.dispose();
    await _subscription.cancel();
  }

  @override
  Widget build(final BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle style = widget.style ?? theme.textTheme.title.copyWith(fontSize: 56.0);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(_measurement.toString(), style: style),
        Text(widget.unit),
      ],
    );
  }
}
