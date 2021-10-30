import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences _preferences;

  static String key = 'todo';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static addTodo(String todo) => _preferences.setString(key, todo);

  static Future getAllTodo() async => _preferences.getString('todo');
}
