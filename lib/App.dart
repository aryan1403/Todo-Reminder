import 'package:flutter/material.dart';
import 'package:todo_reminder/Components/appBar.dart';
import 'package:todo_reminder/Components/todo.dart';
import 'package:todo_reminder/DB/sharedPrefs.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.black,
          child: Column(
            children: [
              appBar(),
              createTodo('Learn Java'),
              createTodo('Learn Spring'),
              createTodo('Learn Node'),
              createTodo('Learn Express'),
              createTodo('Learn Angular'),
              createTodo('Learn React'),
              //SharedPrefs.addTodo('Meow'),
              FutureBuilder<dynamic>(
                future: SharedPrefs.getAllTodo(), // async work
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return createTodo(snapshot.data);
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else {
                    return Text('No Data Found!');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
