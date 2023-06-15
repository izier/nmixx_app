import 'package:flutter/material.dart';
import 'package:nmixx_app/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NMIXX App',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}