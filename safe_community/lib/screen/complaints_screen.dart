import 'package:flutter/material.dart';

class ComplaintsScreen extends StatelessWidget {
  const ComplaintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Скарги")),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.warning, color: Colors.red),
            title: Text("Яма на дорозі"),
            subtitle: Text("В процесі"),
          ),
          ListTile(
            leading: Icon(Icons.light, color: Colors.orange),
            title: Text("Немає освітлення"),
            subtitle: Text("В роботі"),
          ),
        ],
      ),
    );
  }
}