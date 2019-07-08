/* This is free and unencumbered software released into the public domain. */

import 'dart:math' as math;

import 'package:flutter/material.dart';

class Scene extends StatefulWidget {
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
  State<Scene> createState() => _SceneState();
}

class _SceneState extends State<Scene> {
  Offset _offset = Offset.zero;

  @override
  Widget build(final BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.003) // perspective transform
          ..rotateX(-(math.pi / 3) + 0.01 * _offset.dy)
          ..rotateY(-0.01 * _offset.dx),
        child: GestureDetector(
          onDoubleTap: () => setState(() => _offset = Offset.zero),
          onPanUpdate: (details) => setState(() => _offset += details.delta),
          //onScaleUpdate: (details) => setState(() {}), // TODO: zoom
          child: GridView.count(
            crossAxisCount: widget.crossAxisCount,
            children: List<Widget>.generate(widget.crossAxisCount * widget.crossAxisCount, (_) {
              return Container(
                decoration: BoxDecoration(
                  color: widget.tileColor.withOpacity(0.5),
                  border: Border.all(
                    width: 0.5,
                    color: widget.gridColor,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
