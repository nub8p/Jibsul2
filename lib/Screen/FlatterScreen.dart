import 'package:flutter/material.dart';
import 'package:sogra/Screen/RecipeScreen.dart';
import '../utils/Block.dart';


class FlatterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: 390,
          height: 844,
          color: Colors.white,
          padding: const EdgeInsets.only(top: 25, ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Text(
                "재료 고르기",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 17.75),
              Container(
                width: 390,
                height: 85,
                color: Color(0xffd9d9d9),
                padding: const EdgeInsets.only(left: 116, right: 117, top: 34, bottom: 27, ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Text(
                      "레시피 찾으러 가기",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.75),
              Container(
                width: 360,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffd9d9d9),
                ),
              ),
              SizedBox(height: 17.75),
              Container(
                width: 382,
                height: 478,
                child: Stack(
                  children:[Container(
                    width: 382,
                    height: 478,
                    padding: const EdgeInsets.only(left: 20, right: 8, top: 13, ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                            SizedBox(width: 12),
                            Container(
                              width: 110,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffd9d9d9),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                    Positioned(
                      left: 185,
                      top: 109,
                      child: Text(
                        "우유",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 306,
                      top: 110,
                      child: Text(
                        "얼음",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 62,
                      top: 108,
                      child: Text(
                        "콜라",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 288,
                      top: 41,
                      child: Container(
                        width: 61,
                        height: 54,
                        child: FlutterLogo(size: 54),
                      ),
                    ),
                    Positioned(
                      left: 156,
                      top: 23,
                      child: Container(
                        width: 82,
                        height: 80.47,
                        child: FlutterLogo(size: 80.47229766845703),
                      ),
                    ),
                    Positioned(
                      left: 34,
                      top: 18,
                      child: Container(
                        width: 84,
                        height: 84,
                        child: FlutterLogo(size: 84),
                      ),
                    ),],
                ),
              ),
              SizedBox(height: 17.75),
              Container(
                width: 390,
                height: 96,
                child: Stack(
                  children:[Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 390,
                        height: 73,
                        color: Color(0xffd9d9d9),
                        padding: const EdgeInsets.only(left: 20, right: 17, top: 6, bottom: 24, ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Text(
                              "홈",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 124.50),
                            Text(
                              "Do it!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(width: 124.50),
                            Text(
                              "MY",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 82,
                          height: 82,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffefefef),
                          ),
                        ),
                      ),
                    ),],
                ),
              ),
            ],
          ),
        )
    );
  }
}


