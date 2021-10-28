import 'package:flutter/material.dart';
import 'package:todo_reminder/App.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Application',
      home: App(),
    );
  }
}
