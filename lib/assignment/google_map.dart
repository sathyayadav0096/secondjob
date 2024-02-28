import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsApi extends StatefulWidget {
  const MapsApi({super.key});

  @override
  State<MapsApi> createState() => _MapsApiState();
}

class _MapsApiState extends State<MapsApi> {
  static const LatLng _pGoogleplex = LatLng(13.0826846, 80.2707516);
  static const LatLng _markerone = LatLng(9.9238032, 78.1188497);
  static const LatLng _madurai = LatLng(9.9252004, 78.11977530000001);
  static const LatLng _chennai = LatLng(13.0826846, 80.2707516);
  static const LatLng _end_location = LatLng(13.0810129, 80.2709696);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition:
            const CameraPosition(target: _pGoogleplex, zoom: 13),
        markers: {
          const Marker(
              markerId: MarkerId('_southwest'),
              icon: BitmapDescriptor.defaultMarker,
              position: _markerone),
          const Marker(
              markerId: MarkerId('Madurai, Tamil Nadu, India'),
              icon: BitmapDescriptor.defaultMarker,
              position: _madurai),
          const Marker(
              markerId: MarkerId('Chennai, Tamil Nadu, India'),
              icon: BitmapDescriptor.defaultMarker,
              position: _chennai),
          const Marker(
              markerId: MarkerId('Chennai, Tamil Nadu, India'),
              icon: BitmapDescriptor.defaultMarker,
              position: _end_location)
        },
      ),
    );
  }
}
