import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UndefinedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("404"),
      ),
      body: InkWell(
        onTap: () {
          print("404按钮");
        },
        child: Text("404内容"),
      ),
    );
  }
}
