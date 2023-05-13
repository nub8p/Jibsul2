import 'package:flutter/material.dart';
import 'package:sogra/Screen/RecipeScreen.dart';

class SelectScreen extends StatefulWidget {
  @override
  _SelectScreenState createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  List<String> items = [
    "콜라",
    "우유",
    "얼음",
    "레몬",
    "맥주",
    "라임",
    "소금",
    "토닉워터",
    "올리브",
    "설탕",
    "과일통조림",
    "에스프레소"
  ];
  List<String> selectedItems = [];
  String selectedItem = "";

  Widget titleBox() {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          "재료 고르기",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }

  Widget mySelectBox() {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: selectedItems.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(selectedItems[index]),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedItems.removeAt(index);
                    });
                  },
                  child: Icon(Icons.close),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget item(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (!selectedItems.contains(items[index])) {
            selectedItems.add(items[index]);
          }
        });
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
          children: [
            Image.asset(
              'images/item$index.png',
              width: 80,
            ),
            Text(
              items[index],
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget block() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(12, (index) {
        return Center(
          child: item(index),
        );
      }),
    );
  }

  Widget ingredientBox() {
    return SizedBox(
      width: double.infinity,
      height: 480,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: block(),
      ),
    );
  }

  Widget Go2Recipe() {
    return SizedBox(
        width: double.infinity,
        height: 60,
        child: Container(
          margin: EdgeInsets.only(top: 10),
          child: Go2RecipeBtn(selectedItems: selectedItems),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  titleBox(),
                  mySelectBox(),
                  Go2Recipe(),
                  ingredientBox(),
                ],
              ),
            )));
  }
}

// nav to [movementScreen] + title
class Go2RecipeBtn extends StatelessWidget {
  List<String> selectedItems;
  Go2RecipeBtn({required this.selectedItems});

  Widget myButton() {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
            child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
          ),
          child: Text("레시피 보러가기",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(190, 100),
          backgroundColor: Colors.black12,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          )),
      child: myButton(),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RecipeScreen(selectedItems: selectedItems)),
        );
      },
    );
  }
}
