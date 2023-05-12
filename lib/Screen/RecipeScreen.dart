import 'package:flutter/material.dart';


// TODO :  레시피에 맞게 페이지 꾸미기
class RecipeScreen extends StatelessWidget {
  String title;
  RecipeScreen({this.title = ""});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child : Container(
          child: Text("Welcome to $title page "),
        ),
      ),
    );
  }
}