import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RecipeScreen extends StatefulWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final List<String> selectedItems;

  RecipeScreen({required this.selectedItems});

  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  int _selectedCardIndex = -1;

  Widget _buildSelectedItems(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 12.0,
                  runSpacing: 12.0,
                  children: widget.selectedItems.map((item) {
                    return AspectRatio(
                      aspectRatio: 1.0,
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Center(
                          child: Text(
                            item,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeCard(String title, [String? description]) {
    return Container(
      width: 200.0,
      height: 200,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              description != null
                  ? Text(
                      description,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecipeList(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              SizedBox(width: 14.0),
              GestureDetector(
                onTap: () {
                  _showRecipeDetails(
                      context, 'Recipe 1', 'Description of Recipe 1');
                },
                child: _buildRecipeCard('Recipe 1', 'Description of Recipe 1'),
              ),
              SizedBox(width: 14.0),
              GestureDetector(
                onTap: () {
                  _showRecipeDetails(
                      context, 'Recipe 2', 'Description of Recipe 2');
                },
                child: _buildRecipeCard('Recipe 2', 'Description of Recipe 2'),
              ),
              SizedBox(width: 14.0),
              GestureDetector(
                onTap: () {
                  _showRecipeDetails(
                      context, 'Recipe 3', 'Description of Recipe 3');
                },
                child: _buildRecipeCard('Recipe 3', 'Description of Recipe 3'),
              ),
              SizedBox(width: 14.0),
            ],
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: _buildSelectedItems(context),
          ),
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "집술이수리 마수리",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    _buildRecipeList('만들 수 있어요.'),
                    SizedBox(height: 40.0),
                    _buildRecipeList('하나가 부족해요.'),
                    SizedBox(height: 40.0),
                    _buildRecipeList('가서 사와 이놈아.'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _showRecipeDetails(
    BuildContext context, String title, String description) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(description),
              SizedBox(height: 20.0),
              Image.network('https://source.unsplash.com/1600x900/?food'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
