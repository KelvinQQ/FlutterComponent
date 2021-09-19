import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  late String _themeColor;

  String get themeColor {
    return _themeColor;
  }

  setTheme(String themeColor) {
    _themeColor = themeColor;
    SpUtil.putString('key_theme_color', themeColor);
    notifyListeners();
  }

  ThemeProvider() {
    _themeColor = SpUtil.getString('key_theme_color', defValue: 'blue')!;
  }
}

class ThemeColors {
  static Map<String, MaterialColor> themeColorMap = {
    'gray': Colors.grey,
    'blue': Colors.blue,
    'yellow': Colors.yellow,
    'cyan': Colors.cyan,
    'deepPurple': Colors.purple,
    'green': Colors.green,
    'indigo': Colors.indigo,
    'orange': Colors.orange,
    'purple': Colors.purple,
    'pink': Colors.pink,
    'teal': Colors.teal,
    'amber': Colors.amber,
    'lime': Colors.lime,
  };
}
