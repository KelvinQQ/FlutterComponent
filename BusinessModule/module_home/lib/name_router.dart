import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_home/toast_page.dart';
import 'help_page.dart';
import 'loading_page.dart';
import 'news_page.dart';

class HomeNamedRouter {
  static const pageRouteNews = "news";

  static Map<String, WidgetBuilder> routers = {
    "news": (ctx) => NewsPage(),
    "loading": (ctx) => LoadingPage(),
    "toast": (ctx) => ToastPage(),
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
