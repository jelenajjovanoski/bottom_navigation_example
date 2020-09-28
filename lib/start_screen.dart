import 'package:flutter/material.dart';
import 'package:bottom_navigation_example/body.dart';
import 'package:bottom_navigation_example/color_constants.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int currentTab = 1;
  List<TabData> tabs = [
    TabData(iconData: Icons.search, title: "Search"),
    TabData(iconData: Icons.home, title: "Home"),
    TabData(iconData: Icons.notifications, title: "Notifications")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bottom Navigation Example',
          style: TextStyle(color: Color(ColorConstants.whiteGray)),
        ),
        backgroundColor: Color(ColorConstants.blueGray),
        centerTitle: true,
      ),
      body: _getBody(currentTab),
      bottomNavigationBar: FancyBottomNavigation(
        initialSelection: 1,
        tabs: tabs,
        textColor: Color(ColorConstants.whiteGray),
        circleColor: Color(ColorConstants.mint),
        activeIconColor: Color(ColorConstants.blueGray),
        inactiveIconColor: Color(ColorConstants.whiteGray),
        barBackgroundColor: Color(ColorConstants.blueGray),
        onTabChangedListener: (position) {
          setState(() {
            currentTab = position;
          });
        },
      ),
    );
  }

  Widget _getBody(int position) {
    switch (position) {
      case 0:
        return Body(iconData: Icons.search);
        break;
      case 2:
        return Body(iconData: Icons.notifications);
        break;
      default:
        return Body(iconData: Icons.home);
    }
  }
}
