
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sogra/Screen/SelectScreen.dart';

// TODO :  레시피에 맞게 페이지 꾸미기
class Block extends StatelessWidget {
  String title;
  Block({this.title = ""});

  List<String> items = ["콜라", "우유", "얼음", "레몬", "맥주",
                        "라임", "소금",  "토닉워터",  "올리브", "설탕",
                        "과일통조림", "위스키"];

  Widget item(int index) {
    return GestureDetector(
      onTap: () {
        // 리스트 인자 보내자.
      },
      child: Container(
          margin: EdgeInsets.all(8),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children : [
                Image.asset('images/item$index.png',
                  width: 80,),
                Text(items[index],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,),
                )

              ]
          )
      )
    );
  }

/*
  Widget item(int index) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children : [
          Image.asset('images/item$index.png',
          width: 80,),

          Text(items[index],
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,),
          )

        ]
      )
    );
  }
*/
  @override
  Widget build(BuildContext context) {
    return GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(12, (index) {
            return Center(
              child: item(index),
            );
          }),
        );
  }
}