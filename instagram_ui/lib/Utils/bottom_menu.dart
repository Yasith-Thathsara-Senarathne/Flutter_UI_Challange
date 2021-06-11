import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    _newItem(title: '', icon: Icons.home),
    _newItem(title: '', icon: Icons.search),
    _newItem(title: '', icon: Icons.add_box_outlined),
    _newItem(title: '', icon: Icons.shop),
    _newItem(title: '', icon: Icons.person),
  ];
}

PersistentBottomNavBarItem _newItem({String title, IconData icon}) {
  return PersistentBottomNavBarItem(
      icon: Icon(icon),
      title: title,
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
      inactiveColorSecondary: Colors.purple,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: '/',
      ));
}
