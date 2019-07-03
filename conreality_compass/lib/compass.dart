/* This is free and unencumbered software released into the public domain. */

library conreality_compass;

import 'dart:async' show Stream, StreamSubscription;

import 'package:flutter/material.dart';

class Compass extends StatefulWidget {
  final String unit;
  final Stream<int> stream;
  final String fontFamily;
  final TextStyle style;

  Compass({Key key, this.unit = "°", this.stream, this.fontFamily, this.style})
      : super(key: key);

  @override
  State<Compass> createState() => _CompassState();
}

class _CompassState extends State<Compass> {
  StreamSubscription<int> _subscription;
  int _bearing = 0;

  @override
  void initState() {
    super.initState();
    _subscription = widget.stream.listen((int bearing) {
      setState(() {
        _bearing = bearing % 360;
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
    final TextStyle style =
        widget.style ?? theme.textTheme.title.copyWith(fontFamily: widget.fontFamily, fontSize: 56);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(_bearing.toString(), style: style),
        Text(widget.unit, style: style.copyWith(fontSize: style.fontSize - 8)),
      ],
    );
  }
}
