import 'package:flutter/material.dart';
import 'package:module_home/home_page.dart';
import 'package:module_home/name_router.dart';
import 'package:module_task/name_router.dart';
import 'package:module_user/name_router.dart';
import 'package:module_setting/setting_page.dart';
import 'package:module_user/user_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {
      "setting": (ctx) => SettingPage(),
    };
    routes
      ..addAll(HomeNamedRouter.routers)
      ..addAll(UserNamedRouter.routers)
      ..addAll(TaksNamedRouter.routers);
    return MaterialApp(
      routes: routes,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeTabPage(),
    );
  }
}

class HomeTabPage extends StatefulWidget {
  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  List<Widget> _tabList = [
    HomePage(),
    UserPage(),
  ];

  List<BottomNavigationBarItem> _barList = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
  ];

  void _onPageChanged(int value) {
    if (value >= 2) {
      value = value + 1;
    }
    setState(() {
      this._currentIndex = value;
    });
  }

  void _onTap(int value) {
    if (value == 2) return;
    if (value > 2) {
      value = value - 1;
    }
    _pageController.animateToPage(value,
        duration: const Duration(milliseconds: 100), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _tabList,
        onPageChanged: _onPageChanged,
        controller: _pageController,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "task");
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: _barList,
        type: BottomNavigationBarType.fixed,
        onTap: _onTap,
        currentIndex: _currentIndex,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
