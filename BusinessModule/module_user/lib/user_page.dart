import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              child: Icon(Icons.settings),
              onTap: () {
                Navigator.pushNamed(context, "setting");
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              child: Icon(Icons.hail),
              onTap: () {
                Navigator.pushNamed(context, "message");
              },
            ),
          ),
        ],
        title: Text("用户"),
      ),
      body: Text("用户内容"),
    );
  }
}
