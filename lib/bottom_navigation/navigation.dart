

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projet/pages/formulaire.dart';
import 'package:flutter_projet/pages/home.dart';
import 'package:flutter_projet/pages/list.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  List<Widget>_widgetOPtions = <Widget>[
    HomeScreen(),
    ListScreen(),
    FormulaireScreen()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOPtions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "List",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.border_color),
            label: "Form",
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
