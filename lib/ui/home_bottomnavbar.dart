import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'login_screen.dart';
import 'home_today.dart';
import 'home_plan.dart';
import 'home_analyse.dart';
import 'home_customize.dart';
import 'Hex_tools.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  bool _isObscure = true;

  var test = false;

  var _selectIndex = 0;
  final returnView = CupertinoTabView(builder: (context) {
    return CupertinoPageScaffold(
      child: HomeToday(), //
      );
    });

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_outlined),
            label: '今日の学び',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: '予定',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insights_outlined),
            label: '学びの記録',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tune_outlined),
            label: 'カスタマイズ',
          ),
        ],
        backgroundColor: HexColor('DFFDFF'),
      ),
      tabBuilder: (context, index) {
        CupertinoTabView returnView;
          switch (index) {
            case 0:
              returnView = CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: HomeToday(), //
                );
              });
              break;
            case 1:
              returnView = CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: HomePlan(), //
                );
              });
              break;
            case 2:
              returnView = CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: HomeAnalyse(), //
                );
              });
              break;
            case 3:
              returnView = CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: HomeCustomize(), //
                );
              });
              break;
            default:
              returnView = CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: HomeToday(), //
                );
              });
              break;
        }
        return returnView;
      }
    );
  }
}
