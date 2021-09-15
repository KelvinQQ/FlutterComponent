import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_log/lib_log.dart';

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
                Logging.v("Home", "Hello Log");
                Navigator.pushNamed(context, "news");
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              child: Icon(Icons.help),
              onTap: () {
                Navigator.pushNamed(context, "helpp");
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
