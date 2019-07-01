/* This is free and unencumbered software released into the public domain. */

library conreality_map;

import 'dart:async' show Stream, StreamSubscription;

import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart' show LatLng;

class Map extends StatefulWidget {
  final Stream<LatLng> stream;

  Map({Key key, this.stream}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  StreamSubscription<LatLng> _subscription;
  LatLng _location;

  @override
  void initState() {
    super.initState();
    _subscription = widget.stream.listen((final LatLng location) {
      setState(() {
        _location = location; // TODO
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
    final TextStyle style = theme.textTheme.title.copyWith(fontSize: 48);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text((_location?.latitude ?? 0).toString(), style: style),
        Text(", ", style: style),
        Text((_location?.longitude ?? 0).toString(), style: style),
      ],
    );
  }
}
