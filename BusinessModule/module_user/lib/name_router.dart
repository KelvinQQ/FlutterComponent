import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_user/message_page.dart';

class UserNamedRouter {
  static Map<String, WidgetBuilder> routers = {
    "message": (ctx) => MessagePage(),
  };
}
