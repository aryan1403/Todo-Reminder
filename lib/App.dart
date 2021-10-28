import 'package:flutter/material.dart';
import 'package:todo_reminder/Components/appBar.dart';
import 'package:todo_reminder/Components/todo.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            appBar(),
            createTodo('Learn Java'),
          ],
        ),
      ),
    );
  }
}
