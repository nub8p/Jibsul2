import 'package:flutter/material.dart';
import 'package:sogra/Screen/FlatterScreen.dart';
import 'package:sogra/Screen/HomeScreen.dart';
import 'package:sogra/Screen/MyScreen.dart';
import 'package:sogra/Screen/SelectScreen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: myApp(),
    );
  }
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() =>
      _myApp();
}

// 스크린 이동
class _myApp
    extends State<myApp> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SelectScreen(),
    MyScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket),
            label: 'Do it!',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff6842C2),
        onTap: _onItemTapped,
      ),
    );
  }
}
