import 'package:flutter/material.dart';
import 'package:todo_reminder/App.dart';
import 'package:todo_reminder/DB/sharedPrefs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
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
