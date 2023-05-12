import 'package:flutter/material.dart';
import 'package:sogra/Screen/RecipeScreen.dart';


class SelectScreen extends StatelessWidget {

  Widget Go2Recipe() {
    return SizedBox(
        width: double.infinity,
        height: 140,
        child : Container(
          color: Colors.deepOrangeAccent,
          margin:EdgeInsets.only(top:10),
          child: Go2RecipeBtn(title: "데킬라 썬라이즈"),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(10),
            color: Colors.amber,
            child : Center(
              child: Column(
                children: [
                  Go2Recipe(),
                ],
              ),
            )
        )
    );
  }
}


// nav to [movementScreen] + title
class Go2RecipeBtn extends StatelessWidget {
  String title;
  Go2RecipeBtn({this.title = ""});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(190, 100),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
        children: [
          Text("Welcome to Recipe"),
        ],
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RecipeScreen(title: title,)),
        );
      },
    );
  }
}