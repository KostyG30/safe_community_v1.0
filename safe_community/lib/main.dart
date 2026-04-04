import 'package:flutter/material.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(const SafeCommunityApp());
}

class SafeCommunityApp extends StatelessWidget {
  const SafeCommunityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Безпечна громада',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}