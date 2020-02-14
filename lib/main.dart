import 'package:flutter/material.dart';
import 'package:flutter_app/screens/splash_screen.dart';
import 'package:flutter_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

import 'models/tasks_notifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksNotifier>(
      create: (BuildContext context) => TasksNotifier(),
      child: MaterialApp(
        home: SplashScreen(),
        routes: {
          '/todo': (BuildContext context) => TasksScreen(),
        },
      ),
    );
  }
}
