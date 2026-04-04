import 'package:flutter/material.dart';
import 'map_screen.dart';
import 'complaints_screen.dart';
import 'proposals_screen.dart';
import 'routes_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const ComplaintsScreen(),
    const ProposalsScreen(),
    const MapScreen(),
    const RoutesScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
      title: Text("Безпечна громада"),
      foregroundColor: Colors.white,
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 12,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.report_problem, color: Colors.white), label: "Скарги", backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(icon: Icon(Icons.lightbulb, color: Colors.white), label: "Пропозиції", backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(icon: Icon(Icons.route, color: Colors.white), label: "Маршрут", backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(icon: Icon(Icons.map, color: Colors.white), label: "Інтерактивна карта", backgroundColor: Colors.blueAccent),
        ],
      ),
    );
  }
}