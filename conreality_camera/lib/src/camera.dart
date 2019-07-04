/* This is free and unencumbered software released into the public domain. */

library conreality_camera;

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  Camera({Key key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    _initCameraController();
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    if (controller == null || !controller.value.isInitialized) {
      return Container();
    }
    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: CameraPreview(controller),
    );
  }

  void _initCameraController() async {
    final List<CameraDescription> cameras = await availableCameras();
    controller = CameraController(cameras.first, ResolutionPreset.medium);
    await controller.initialize();
    if (!mounted) return;
    setState(() {});
  }
}
