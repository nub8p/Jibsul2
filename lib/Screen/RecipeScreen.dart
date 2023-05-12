import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  final List<String> selectedItems;

  RecipeScreen({required this.selectedItems});

  Widget _buildSelectedItems() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected Ingredients:',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: selectedItems.map((item) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  item,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildSelectedItems(),
            SizedBox(height: 16.0),
            Text(
              'Recommended Recipes:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // 여기에 실제 레시피 리스트의 개수를 입력하세요.
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.local_dining),
                    title: Text('Recipe ${index + 1}'),
                    subtitle: Text('Description of Recipe ${index + 1}'),
                    onTap: () {
                      // 레시피 상세 페이지로 이동
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
