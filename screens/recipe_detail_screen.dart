import 'package:flutter/material.dart';

class RecipeDetailScreen extends StatelessWidget {
  final String recipeName;
  final String recipeDescription;
  final List<String> ingredients;
  final String instructions;

  RecipeDetailScreen({required this.recipeName, required this.recipeDescription, required this.ingredients, required this.instructions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recipeDescription,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text('Ingredients:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ...ingredients.map((ingredient) => Text('- $ingredient')).toList(),
              SizedBox(height: 20),
              Text('Instructions:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text(instructions),
            ],
          ),
        ),
      ),
    );
  }
}