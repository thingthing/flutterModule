import 'package:flutter/material.dart';
import 'package:flutter_app/screens/splash_screen.dart';
import 'package:flutter_app/screens/todo_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: SplashScreen(),
      routes: {
        '/todo': (BuildContext context) => TodoScreen(),
      },
    );
  }
}
