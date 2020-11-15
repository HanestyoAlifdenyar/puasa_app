import 'package:flutter/material.dart';
import 'package:puasa_app/screens/menus/home_screen.dart';
import 'package:puasa_app/screens/menus/puasa_screen.dart';

class ParentScreen extends StatefulWidget {
  @override
  _ParentScreenState createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  int _lastSelected = 0;
  final List<Widget> menu = <Widget>[
    HomeScreen(),
    PuasaScreen(),
  ];

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: menu.elementAt(_lastSelected),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _lastSelected,
        type: BottomNavigationBarType.fixed,
        onTap: _selectedTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text('Puasa')),
        ],
      ),
    );
  }
}
