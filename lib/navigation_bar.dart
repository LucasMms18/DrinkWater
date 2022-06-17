import 'package:drink_water/custom_drawer.dart';
import 'package:drink_water/historic.dart';
import 'package:drink_water/home.dart';
import 'package:drink_water/settings.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  int _selectedScreen = 0;

  static const List<Widget> _widgetOptions = [
    HomePage(),
    Historic(),
    Settings(),
  ];

  void _onScreenTapped(int index) {
    setState(() => _selectedScreen = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedScreen),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Histórico"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Opções"),
        ],
        currentIndex: _selectedScreen,
        onTap: _onScreenTapped,
      ),
    );
  }
}
