import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe List'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Spaghetti Carbonara'),
          ),
          ListTile(
            title: Text('Chicken Tikka Masala'),
          ),
          ListTile(
            title: Text('Beef Stroganoff'),
          ),
          ListTile(
            title: Text('Vegetable Stir Fry'),
          ),
        ],
      ),
    );
  }
}