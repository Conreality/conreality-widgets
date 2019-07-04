/* This is free and unencumbered software released into the public domain. */

library conreality_map;

import 'dart:async' show Completer, Stream, StreamSubscription;

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'
    show
        BitmapDescriptor,
        CameraPosition,
        CameraUpdate,
        GoogleMap,
        GoogleMapController,
        InfoWindow,
        LatLng,
        MapType,
        Marker,
        MarkerId;

class Map extends StatefulWidget {
  final LatLng initialLocation;
  final Stream<LatLng> currentLocation;

  Map({Key key, @required this.initialLocation, this.currentLocation})
      : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  LatLng _location;
  StreamSubscription<LatLng> _locationSubscription;
  Completer<GoogleMapController> _controller = Completer();
  Marker selfMarker = Marker(
    markerId: MarkerId("self"),
    position: null,
    icon: BitmapDescriptor.defaultMarker, // TODO
    infoWindow: InfoWindow(title: "Self"),
  );

  @override
  void initState() {
    super.initState();
    _location = widget.initialLocation;
    if (widget.currentLocation != null) {
      _locationSubscription = widget.currentLocation.listen(_setLocation);
    }
  }

  @override
  void dispose() async {
    super.dispose();
    await _locationSubscription?.cancel();
  }

  @override
  Widget build(final BuildContext context) {
    return GoogleMap(
      mapType: MapType.hybrid,
      initialCameraPosition: CameraPosition(target: _location, zoom: 16),
      compassEnabled: true,
      onMapCreated: (final GoogleMapController controller) {
        _controller.complete(controller);
      },
      markers: <Marker>{
        selfMarker.copyWith(positionParam: _location),
      },
    );
  }

  void _setLocation(final LatLng location) async {
    setState(() {
      _location = location;
    });
    final GoogleMapController controller = await _controller.future;
    controller.moveCamera(CameraUpdate.newLatLng(location));
  }
}
