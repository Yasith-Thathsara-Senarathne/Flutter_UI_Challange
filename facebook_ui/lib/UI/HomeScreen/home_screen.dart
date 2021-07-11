import 'package:facebook_ui/Models/ActiveUserDataModel.dart';
import 'package:facebook_ui/Models/StoryDataModel.dart';
import 'package:facebook_ui/UI/HomeScreen/home_controller.dart';
import 'package:facebook_ui/Utils/bottom_menu.dart';
import 'package:facebook_ui/Utils/constants.dart';
import 'package:facebook_ui/Widgets/active_view.dart';
import 'package:facebook_ui/Widgets/app_bar_view.dart';
import 'package:facebook_ui/Widgets/bottom_nav_bar.dart';
import 'package:facebook_ui/Widgets/story_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final _homeController = Get.put(HomeController());
  var selectedBottomBarItem = 0;

  Widget _bindActiveListView(List<ActiveUserDataModel> activeUserList) {
    return activeUserList.isEmpty
        ? Container()
        : ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: activeUserList.length,
            itemBuilder: (context, index) {
              return ActiveView(activeUserList[index]);
            },
          );
  }

  Widget _bindStoryListView(List<StoryDataModel> storyList, double viewHeight) {
    return storyList.isEmpty
        ? Container()
        : ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: storyList.length,
            itemBuilder: (context, index) {
              return StoryView(storyList[index], viewHeight);
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final activeViewHeight = mediaQuery.size.height * 0.076;
    final storyViewHeight = mediaQuery.size.height * 0.28;
    final body = SafeArea(
      child: Column(
        children: [
          AppBarView(),
          Container(
            height: activeViewHeight,
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 8,
            ),
            child: _bindActiveListView(_homeController.getActiveUserList),
          ),
          Container(
            color: AppColors.ghost,
            height: 10,
          ),
          Container(
            height: storyViewHeight,
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 8,
            ),
            child: _bindStoryListView(
                _homeController.getStoryList, storyViewHeight),
          ),
          Container(
            color: AppColors.ghost,
            height: 10,
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.99),
      body: body,
      bottomNavigationBar: Container(
        child: BottomNavBarWidget(
          selectedIndex: selectedBottomBarItem,
          items: navBarItems(),
        ),
      ),
    );
  }
}
