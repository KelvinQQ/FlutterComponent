import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("帮助"),
      ),
      body: InkWell(
        onTap: () {
          print("点击帮助按钮");
        },
        child: Text("帮助内容"),
      ),
    );
  }
}
