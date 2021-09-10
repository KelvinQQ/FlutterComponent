import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'news_page.dart';

class HomeNamedRouter {
  static Map<String, WidgetBuilder> routers = {
    "news": (ctx) => NewsPage(),
  };
}
