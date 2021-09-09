import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
                Fluttertoast.showToast(
                    msg: "点击设置",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black45,
                    textColor: Colors.white,
                    fontSize: 16);
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
