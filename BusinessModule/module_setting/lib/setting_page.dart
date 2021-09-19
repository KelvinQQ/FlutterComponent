import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  late String _colorKey = 'red';

  @override
  void initState() {
    super.initState();

    _initAsync();
  }

  Future<void> _initAsync() async {
    await SpUtil.getInstance();
    _colorKey = SpUtil.getString('key_theme_color', defValue: 'red')!;
    Provider.of<ThemeProvider>(context, listen: false).setTheme(_colorKey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("设置"),
      ),
      body: ListView.separated(
          itemBuilder: (ctx, idx) {
            return ExpansionTile(
              leading: Icon(Icons.color_lens),
              title: Text('颜色主题'),
              initiallyExpanded: false,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: ThemeColors.themeColorMap.keys.map((key) {
                      MaterialColor value = ThemeColors.themeColorMap[key]!;
                      return InkWell(
                        onTap: () {
                          setState(() {
                            _colorKey = key;
                          });
                          Provider.of<ThemeProvider>(context, listen: false)
                              .setTheme(key);
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          color: value,
                          child: _colorKey == key
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            );
          },
          separatorBuilder: (ctx, idx) {
            return Divider();
          },
          itemCount: 1),
    );
  }
}
