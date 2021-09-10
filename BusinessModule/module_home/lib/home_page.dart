import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              child: Icon(Icons.backpack),
              onTap: () {
                Navigator.pushNamed(context, "news");
              },
            ),
          ),
        ],
        title: Text("首页"),
      ),
      body: Text("首页内容"),
    );
  }
}
