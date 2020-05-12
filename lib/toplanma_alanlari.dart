import 'dart:async';
import 'package:fluster/fluster.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'map_marker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class ToplanmaAlanlari extends StatefulWidget {
  @override
  _ToplanmaAlanlariState createState() => _ToplanmaAlanlariState();
}

class _ToplanmaAlanlariState extends State<ToplanmaAlanlari> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(37.8784235, 32.366398);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  MapType _currentMapType = MapType.normal;

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }


  LatLng _lastMapPosition = _center;

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  final Set<Marker> _markers = {};


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Toplanma Alanları"),
          backgroundColor: Colors.orange,
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition:
              CameraPosition(target: _center, zoom: 11.0),
              mapType: _currentMapType,
              markers: _markers,
              onCameraMove: _onCameraMove,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: _onMapTypeButtonPressed,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.orange,
                      child: Icon(
                        Icons.map,
                        size: 36.0,
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    /*FloatingActionButton(
                      //onPressed: _onAddMarkerButtonPressed,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.orange,
                      child: const Icon(Icons.add_location, size: 36.0),
                    ),*/
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
