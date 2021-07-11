import 'package:facebook_ui/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

List<PersistentBottomNavBarItem> navBarItems() {
  return [
    _newItem(title: '', imageName: ImageNames.homeTabIcon, isSelected: true),
    _newItem(title: '', imageName: ImageNames.friendsTabIcon),
    _newItem(title: '', imageName: ImageNames.userTabIcon),
    _newItem(title: '', imageName: ImageNames.notificationTabIcon),
    _newItem(title: '', imageName: ImageNames.menuTabIcon)
  ];
}

PersistentBottomNavBarItem _newItem(
    {String title, String imageName, bool isSelected = false}) {
  return PersistentBottomNavBarItem(
      icon: Image.asset(
        imageName,
        width: 24,
        height: 24,
        color: isSelected ? AppColors.dodgerBlue : Colors.black,
      ),
      title: title,
      activeColorPrimary: AppColors.dodgerBlue,
      inactiveColorPrimary: AppColors.ghost,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: '/',
      ));
}
