import 'package:flutter/material.dart';

/*
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child : Container(
          child: Text("Welcome to HomeScreen"),
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'DarkHomeScreen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool status = false;
  bool isSwitchOn = false;

  Color _textColor = Colors.black;
  Color _appBarColor = Color.fromRGBO(36, 41, 46, 1);
  Color _scaffoldBgcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child : Container(
          width: 390,
          height: 844,
          color: Colors.white,
          child: Stack(
            children:[
              Positioned(
                left: 13,
                top: 438,
                child: SizedBox(
                  width: 225,
                  child: Text(
                    "오늘 기분을 커피로 마셔요.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
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
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 64,
                child: SizedBox(
                  width: 125,
                  child: Text(
                    "커피 한 잔 할래요?",
                    style: TextStyle(
                      color: Color(0xff737373),
                      fontSize: 16,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                    ),
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
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xff5FA1E2), Color(0xff6653C8)],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "바닐라 프라푸치노",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "구름 위 솜사탕 맛일까",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
                )
              ),
              Positioned(
                left: 13,
                top: 472,
                child: Container(
                  width: 360,
                  height: 127,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage('https://source.unsplash.com/1600x900/?coffee&' + DateTime.now().millisecondsSinceEpoch.toString()),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ),
              Positioned(
                left: 15,
                top: 610,
                child: Container(
                  width: 360,
                  height: 127,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage('https://source.unsplash.com/1600x900/?coffee'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ),
              Positioned(
                left: 255,
                top: 269,
                child: Container(
                  width: 182,
                  height: 131,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff646CD0), // 맨 왼쪽
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "카페라테",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "심플 이즈 베스트",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ),
              Positioned(
                left: -146,
                top: 269,
                child: Container(
                  width: 184,
                  height: 131,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff646CD0),
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
                          color: Color(0xffefefef), //검색바
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
                left: 42,
                top: 160,
                child: Container(
                  width: 230,
                  // height: 227,
                  child: Image.asset(
                      'images/coffee2.png',
                  ),
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
                          // Positioned.fill(
                          //   child: Align(
                          //     alignment: Alignment.topRight,
                          //     child: Transform.translate(
                          //       offset: Offset(-3, 5), // 원하는 만큼 위로 이동시키는 오프셋 값을 지정합니다.
                          //       child: Transform.rotate(
                          //         angle: 3.14,
                          //         child: GestureDetector(
                          //           onTap: navigateToNextScreen, // 클릭 이벤트가 발생하면 navigateToNextScreen 메서드가 호출됩니다.
                          //           child: Container(
                          //             width: 31,
                          //             height: 32,
                          //             decoration: BoxDecoration(
                          //               borderRadius: BorderRadius.circular(20),
                          //               color: Color(0xffeccb51),
                          //             ),
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          FlutterSwitch(
                            width: 100.0,
                            height: 55.0,
                            toggleSize: 45.0,
                            value: false,
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

                                if (status) {
                                  _textColor = Colors.white;
                                  _appBarColor = Color.fromRGBO(22, 27, 34, 1);
                                  _scaffoldBgcolor = Color(0xFF0D1117);
                                  // sleep(Duration(seconds: 2));
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => DarkHomeScreen())
                                  );
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
                  child: Image.asset(
                    'images/coffee1.png',
                      width: 80
                  ),
                    //FlutterLogo(size: 143),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}