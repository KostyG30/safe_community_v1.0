import 'package:flutter/material.dart';

class RoutesScreen extends StatelessWidget {
  const RoutesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Маршрути")),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.directions_bus),
            title: Text("Маршрут №2"),
            subtitle: Text("08:15 - 08:30"),
          ),
          ListTile(
            leading: Icon(Icons.directions_bus),
            title: Text("Маршрут №7"),
            subtitle: Text("08:25 - 08:45"),
          ),
        ],
      ),
    );
  }
}