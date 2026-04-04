import 'package:flutter/material.dart';

class ProposalsScreen extends StatelessWidget {
  const ProposalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Пропозиції")),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Text("Встановити велодоріжку"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.thumb_up, color: Colors.green),
                  SizedBox(width: 10),
                  Icon(Icons.thumb_down, color: Colors.red),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}