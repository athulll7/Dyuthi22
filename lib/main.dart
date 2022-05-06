import 'package:dyuthi22/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:dyuthi22/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashScreen(),
        theme: ThemeData(primaryColor: Colors.red, primarySwatch: Colors.red));
  }
}
