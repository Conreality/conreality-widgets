/* This is free and unencumbered software released into the public domain. */

import 'dart:math' as math;

import 'package:flutter/material.dart';

class Scene extends StatelessWidget {
  const Scene(
      {Key key,
      this.crossAxisCount = 32,
      this.gridColor = Colors.redAccent,
      this.tileColor = Colors.black})
      : super(key: key);

  final int crossAxisCount;
  final Color gridColor;
  final Color tileColor;

  @override
  Widget build(final BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.003) // perspective
          ..rotateX(-(math.pi / 3)),
        child: GridView.count(
          crossAxisCount: crossAxisCount,
          children: List<Widget>.generate(crossAxisCount * crossAxisCount, (_) {
            return Container(
              decoration: BoxDecoration(
                color: tileColor.withOpacity(0.5),
                border: Border.all(
                  width: 0.5,
                  color: gridColor,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
