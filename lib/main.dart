import 'package:flutter/material.dart';
import 'package:bottom_navigation_example/start_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavExample',
      home: StartScreen(),
    );
  }
}
