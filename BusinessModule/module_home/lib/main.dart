import 'package:flutter/material.dart';
import 'package:module_home/help_page.dart';
import 'package:module_home/home_page.dart';
import 'package:module_home/name_router.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: HomeNamedRouter.routers,
      onGenerateRoute: HomeNamedRouter.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
