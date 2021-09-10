import 'package:flutter/material.dart';
import 'package:module_user/name_router.dart';
import 'package:module_user/user_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: UserNamedRouter.routers,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: UserPage(),
    );
  }
}
