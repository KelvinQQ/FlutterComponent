import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  String _themeColor = 'red';

  String get themeColor => _themeColor;

  setTheme(String themeColor) {
    _themeColor = themeColor;
    notifyListeners();
  }
}

class ThemeColors {
  static Map<String, MaterialColor> themeColorMap = {
    'gray': Colors.grey,
    'blue': Colors.blue,
    'blueAccent': Colors.yellow,
    'cyan': Colors.cyan,
    'deepPurple': Colors.purple,
    'deepOrange': Colors.orange,
    'green': Colors.green,
    'indigo': Colors.indigo,
    'orange': Colors.orange,
    'purple': Colors.purple,
    'pink': Colors.pink,
    'red': Colors.red,
    'teal': Colors.teal,
  };
}
