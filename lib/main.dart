import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(techblog());
}

class techblog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Blog',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
