import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_task/task_page.dart';

class TaksNamedRouter {
  static Map<String, WidgetBuilder> routers = {
    "task": (ctx) => TaskPage(),
  };
}
