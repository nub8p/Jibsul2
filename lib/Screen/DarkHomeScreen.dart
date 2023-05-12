import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sogra/Screen/MyScreen.dart';
import 'package:sogra/Screen/SelectScreen.dart';
import 'HomeScreen.dart';


class DarkHomeScreen extends StatefulWidget {
  @override
  _DarkHomeScreenState createState() => _DarkHomeScreenState();
}

class _DarkHomeScreenState extends State<DarkHomeScreen> {
  bool status = true;
  bool isSwitchOn = true;

  Color _textColor = Colors.black;
  Color _appBarColor = Color.fromRGBO(36, 41, 46, 1);
  Color _scaffoldBgcolor = Colors.white;
  void navigateToNextScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()), // NextScreen은 다음 화면을 나타내는 위젯입니다.
    );
  }

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
          child : Container(
            width: 390,
            height: 844,
            color: Color(0xff353535),
            child: Stack(
              children:[
                Positioned(
                  left: 13,
                  top: 438,
                  child: SizedBox(
                    width: 225,
                    child: Text(
                      "나의 짝꿍 칵테일 테스트",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: 87,
                  child: SizedBox(
                    width: 68,
                    child: Text(
                      "집술이",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 64,
                  child: Text(
                    "나의 눈동자에 건배",
                    style: TextStyle(
                      color: Color(0xffe5e5e5),
                      fontSize: 16,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 53,
                  top: 242,
                  child: Container(
                    width: 185,
                    height: 161,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                ),
                Positioned(
                  left: 13,
                  top: 472,
                  child: Container(
                    width: 360,
                    height: 127,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 610,
                  child: Container(
                    width: 360,
                    height: 127,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                ),
                Positioned(
                  left: 255,
                  top: 269,
                  child: Container(
                    width: 182,
                    height: 131,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                ),
                Positioned(
                  left: -146,
                  top: 269,
                  child: Container(
                    width: 184,
                    height: 131,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: 137,
                  child: Container(
                    width: 334,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffefefef),
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          left: 25,
                          top: 14,
                          child: SizedBox(
                            width: 254,
                            child: Text(
                              "당신이 원하는 메뉴나 레시피를 검색하세요. ",
                              style: TextStyle(
                                color: Color(0xff737373),
                                fontSize: 14,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 296,
                          top: 13,
                          child: Container(
                            width: 18,
                            height: 18,
                            child: Stack(
                              children:[

                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 334,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffefefef),
                          ),
                        ),
                        Positioned(
                          left: 25,
                          top: 14,
                          child: SizedBox(
                            width: 254,
                            child: Text(
                              "당신이 원하는 메뉴나 레시피를 검색하세요. ",
                              style: TextStyle(
                                color: Color(0xff737373),
                                fontSize: 14,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 296,
                          top: 13,
                          child: Container(
                            width: 18,
                            height: 18,
                            child: Stack(
                              children:[
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 92,
                  top: 173,
                  child: Container(
                    width: 171,
                    height: 227,
                    child: FlutterLogo(size: 171),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Transform.rotate(
                      angle: 3.14,
                      child: Container(
                        width: 94,
                        height: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xffefefef), width: 1, ),
                          color: Color(0xff5491cd),
                        ),
                        child: Stack(
                          children:[
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Transform.rotate(
                                  angle: 3.14,
                                  child: Container(
                                    width: 75,
                                    height: 41,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff5fa1e2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Transform.rotate(
                                  angle: 3.14,
                                  child: Container(
                                    width: 57,
                                    height: 41,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff6ca9e5),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            FlutterSwitch(
                              width: 100.0,
                              height: 55.0,
                              toggleSize: 45.0,
                              value: true,
                              borderRadius: 30.0,
                              padding: 2.0,
                              activeToggleColor: Color(0xFF6E40C9),
                              inactiveToggleColor: Color(0xFF2F363D),
                              activeSwitchBorder: Border.all(
                                color: Color(0xFF3C1E70),
                                width: 6.0,
                              ),
                              inactiveSwitchBorder: Border.all(
                                color: Color(0xFFD1D5DA),
                                width: 6.0,
                              ),
                              activeColor: Color(0xFF271052),
                              inactiveColor: Colors.white,
                              activeIcon: Icon(
                                Icons.nightlight_round,
                                color: Color(0xFFF8E3A1),
                              ),
                              inactiveIcon: Icon(
                                Icons.wb_sunny,
                                color: Color(0xFFFFDF5D),
                              ),
                              onToggle: (val) {
                                setState(() {
                                  status = val;

                                  if (!status) {
                                    _textColor = Colors.black;
                                    _appBarColor = Color.fromRGBO(36, 41, 46, 1);
                                    _scaffoldBgcolor = Colors.white;
                                    // sleep(Duration(seconds: 2));
                                    Navigator.pop(context,
                                    MaterialPageRoute(builder: (context) => HomeScreen()));
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 301,
                  top: 212,
                  child: Container(
                    width: 143,
                    height: 175,
                    child: FlutterLogo(size: 143),
                  ),
                ),
              ],
            ),
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Do it!',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'My',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
