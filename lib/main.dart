import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'چی بپزم - Recipe App',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Your-Persian-Font', // Update with actual font name
      ),
      home: HomeScreen(),
    );
  }
}

// Make sure to add your HomeScreen implementation in the home_screen.dart file.