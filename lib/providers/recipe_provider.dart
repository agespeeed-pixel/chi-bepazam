import 'package:flutter/material.dart';

class RecipeProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _recipes = [
    {
      'id': 1,
      'name': 'خورش قیمه',
      'description': 'غذای سنتی ایرانی',
      'cookTime': '45',
      'servings': '4',
      'image': 'assets/images/khoresht.jpg',
      'ingredients': [
        '500 گرم گوشت قرمز',
        '2 پیاز درشت‌ریز',
        '100 گرم لوبیا',
        '100 گرم نخود',
        'نمک، فلفل، زردچوبه'
      ],
      'instructions': '1. گوشت را تفت دهید\n2. پیاز را اضافه کنید\n3. لوبیا و نخود اضافه کنید\n4. آب اضافه کنید\n5. 45 دقیقه بپزید',
      'difficulty': 'آسان',
      'isFavorite': false
    },
    {
      'id': 2,
      'name': 'سالاد شیرازی',
      'description': 'سالاد تازه و سبک',
      'cookTime': '10',
      'servings': '2',
      'image': 'assets/images/salad.jpg',
      'ingredients': [
        '2 گوجه فرنگی',
        '1 خیار',
        '1 پیاز سفید',
        'نعناع و پودینه'
      ],
      'instructions': '1. گوجه و خیار را خردکنید\n2. پیاز را نازک کنید\n3. نعناع اضافه کنید\n4. سرخ سرخ کنید',
      'difficulty': 'خیلی آسان',
      'isFavorite': false
    },
    {
      'id': 3,
      'name': 'کتلت',
      'description': 'کتلت خانگی لذیذ',
      'cookTime': '30',
      'servings': '4',
      'image': 'assets/images/kotlet.jpg',
      'ingredients': [
        '500 گرم گوشت چرخ‌شده',
        '1 پیاز',
        '1 فنجان شیر',
        'نان کوبیده‌شده',
        'تخم‌مرغ'
      ],
      'instructions': '1. گوشت را با مایعات مخلوط کنید\n2. قالب‌گیری کنید\n3. در روغن سرخ کنید',
      'difficulty': 'متوسط',
      'isFavorite': false
    }
  ];

  List<Map<String, dynamic>> _favoriteRecipes = [];
  List<Map<String, dynamic>> _searchResults = [];
  String _selectedCategory = 'همه';

  List<Map<String, dynamic>> get recipes => _recipes;
  List<Map<String, dynamic>> get favoriteRecipes => _favoriteRecipes;
  List<Map<String, dynamic>> get searchResults => _searchResults;
  String get selectedCategory => _selectedCategory;

  void toggleFavorite(int recipeId) {
    final index = _recipes.indexWhere((recipe) => recipe['id'] == recipeId);
    if (index != -1) {
      _recipes[index]['isFavorite'] = !_recipes[index]['isFavorite'];
      if (_recipes[index]['isFavorite']) {
        _favoriteRecipes.add(_recipes[index]);
      } else {
        _favoriteRecipes.removeWhere((recipe) => recipe['id'] == recipeId);
      }
      notifyListeners();
    }
  }

  void searchRecipes(String query) {
    if (query.isEmpty) {
      _searchResults = [];
    } else {
      _searchResults = _recipes
          .where((recipe) => recipe['name'].contains(query))
          .toList();
    }
    notifyListeners();
  }

  void setCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void addRecipe(Map<String, dynamic> recipe) {
    _recipes.add(recipe);
    notifyListeners();
  }
}