import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'help_page.dart';
import 'news_page.dart';

class HomeNamedRouter {
  static Map<String, WidgetBuilder> routers = {
    "news": (ctx) => NewsPage(),
  };

  static RouteFactory generateRoute = (settings) {
    if (settings.name == "help") {
      print("${settings.name}");
      return MaterialPageRoute(builder: (ctx) {
        return HelpPage();
      });
    }
  };
}
