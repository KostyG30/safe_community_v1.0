import 'package:flutter/material.dart';
import 'map_screen.dart';
import 'complaints_screen.dart';
import 'proposals_screen.dart';
import 'routes_screen.dart';
import 'main_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Main_menu(),
    const ComplaintsScreen(),
    const ProposalsScreen(),
    const RoutesScreen(),
    const MapScreen()
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
      toolbarHeight: 165,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
      Image.asset('assets/SafeLogo.png', 
        fit: BoxFit.contain, width: 180),
        SizedBox(width: 10),
        Text("Безпечна громада", style: TextStyle(fontSize: 30)),
      ]
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.white], 
          begin: AlignmentGeometry.bottomLeft,
          end: AlignmentGeometry.bottomRight
          )
          )
        ),
      ),

      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 12,
        selectedItemColor: Colors.white,
        
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white), label: "Головна", backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(icon: Icon(Icons.report_problem, color: Colors.white), label: "Скарги", backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(icon: Icon(Icons.lightbulb, color: Colors.white), label: "Пропозиції", backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(icon: Icon(Icons.route, color: Colors.white), label: "Маршрут", backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(icon: Icon(Icons.map, color: Colors.white), label: "Інтерактивна карта", backgroundColor: Colors.blueAccent),
        ],
      ),
      );
  }
}