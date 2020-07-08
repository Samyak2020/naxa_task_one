import 'package:flutter/material.dart';
import 'package:naxa_task_one/home_screen.dart';
import 'package:naxa_task_one/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task-One App',
      theme: appThemes(),
      home: HomeScreen(),
    );
  }
}
