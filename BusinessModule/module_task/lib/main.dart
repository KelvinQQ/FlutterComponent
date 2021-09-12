import 'package:flutter/material.dart';
import 'package:module_task/task_page.dart';

import 'name_router.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: TaksNamedRouter.routers,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: TaskPage(),
    );
  }
}
