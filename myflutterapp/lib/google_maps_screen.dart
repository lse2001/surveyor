import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myflutterapp/globals.dart';

class GoogleMapsScreen extends StatelessWidget {
  const GoogleMapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Google Maps',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: skyBlue,
        foregroundColor: lightBlack,
      ),
      body: const GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.7749,
            -122.4194,
          ), // Example coordinates (San Francisco)
          zoom: 10,
        ),
      ),
    );
  }
}
