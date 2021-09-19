import 'package:flustars/flustars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:host_app/undefined_page.dart';
import 'package:lib_log/lib_log.dart';
import 'package:module_home/home_page.dart';
import 'package:module_home/name_router.dart';
import 'package:lib_theme/theme_provider.dart';
import 'package:module_task/name_router.dart';
import 'package:module_user/name_router.dart';
import 'package:module_setting/setting_page.dart';
import 'package:module_user/user_page.dart';
import 'package:provider/provider.dart';

void main() async {
  // 强制竖屏
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (ctx) => ThemeProvider())
            ],
            child: App(),
          )));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {
      "setting": (ctx) => SettingPage(),
    };
    routes
      ..addAll(HomeNamedRouter.routers)
      ..addAll(UserNamedRouter.routers)
      ..addAll(TaksNamedRouter.routers);
    return Consumer<ThemeProvider>(
      builder: (ctx, theme, _) {
        Logging.d("APP", theme.themeColor);
        return MaterialApp(
          routes: routes,
          onUnknownRoute: (settings) {
            return CupertinoPageRoute(builder: (ctx) {
              return UndefinedPage();
            });
          },
          onGenerateRoute: HomeNamedRouter.generateRoute,
          theme: ThemeData(
            //  (ThemeColors.themeColorMap[theme.themeColor])!
            primarySwatch: (ThemeColors.themeColorMap[theme.themeColor])!,
            // primaryColor: ThemeColors.themeColorMap[theme.themeColor],
            pageTransitionsTheme: PageTransitionsTheme(builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            }),
          ),
          home: HomeTabPage(),
        );
      },
    );
  }
}

class HomeTabPage extends StatefulWidget {
  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  static const TAG = "App";

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
    const String inProduction = const String.fromEnvironment("ENV");
    Logging.d(TAG, inProduction);
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
