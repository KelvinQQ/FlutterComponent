import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新闻"),
      ),
      body: Text("新闻内容"),
    );
  }
}
