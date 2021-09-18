import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_log/lib_log.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late var _listTitles = {
    "loading": '等待框',
    "toast": 'Toast',
    "pullrefresh": "下拉刷新"
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
      body: ListView.separated(
          itemBuilder: (ctx, idx) {
            return Container(
              height: 30,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                      context, "${_listTitles.keys.toList()[idx]}");
                },
                child: Center(
                  child: Text("${_listTitles.values.toList()[idx]}"),
                ),
              ),
            );
          },
          separatorBuilder: (ctx, idx) => Divider(),
          itemCount: _listTitles.keys.toList().length),
    );
  }
}
