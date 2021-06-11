import 'package:flutter/material.dart';
import 'package:instagram_ui/Utils/constants.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    _newItem(title: '', imageName: ImageNames.homeImage),
    _newItem(title: '', imageName: ImageNames.searchImage),
    _newItem(title: '', imageName: ImageNames.addPostImage),
    _newItem(title: '', imageName: ImageNames.shopImage),
    _newItem(title: '', imageName: ImageNames.userImage),
  ];
}

PersistentBottomNavBarItem _newItem({String title, String imageName}) {
  return PersistentBottomNavBarItem(
      icon: Image.asset(
        imageName,
        width: 24,
        height: 24,
      ),
      title: title,
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
      inactiveColorSecondary: Colors.purple,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: '/',
      ));
}
