import 'package:fastmath/screens/home_screen.dart';
import 'package:fastmath/screens/training_list_screen.dart';
import 'package:flutter/material.dart';

class HomeNavRoutingPage extends StatefulWidget {

  static const String route = "/home";

  const HomeNavRoutingPage({super.key});

  @override
  State<HomeNavRoutingPage> createState() =>
      _HomeNavRoutingPageState();
}

class _HomeNavRoutingPageState extends State<HomeNavRoutingPage> {
  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    TrainingListScreen()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screen =_screens.elementAt(_selectedIndex);
    return Scaffold(
      appBar: AppBar(
        title: const Text("A text"),
      ),
      body: Center(
        child: screen,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Trainings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
