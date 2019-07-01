/* This is free and unencumbered software released into the public domain. */

library conreality_dosimeter;

import 'dart:async' show Timer;

import 'package:flutter/material.dart';

class Dosimeter extends StatefulWidget {
  Dosimeter({Key key}) : super(key: key);

  @override
  State<Dosimeter> createState() => _DosimeterState();
}

class _DosimeterState extends State<Dosimeter> {
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(final BuildContext context) {
    return Text("TODO"); // TODO
  }
}
