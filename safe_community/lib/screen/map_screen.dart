import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Інтерактивна карта")),
    /*    body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(48.2921, 25.9358), // приклад координат
          zoom: 12,
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),*/
      );
  }
}