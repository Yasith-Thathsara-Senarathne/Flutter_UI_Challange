import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_ui/Models/PostDataModel.dart';
import 'package:instagram_ui/Models/StoryDataModel.dart';
import 'package:instagram_ui/UI/Home/home_controller.dart';
import 'package:instagram_ui/Utils/bottom_menu.dart';
import 'package:instagram_ui/Widgets/app_bar_view.dart';
import 'package:instagram_ui/Widgets/bottom_nav_bar.dart';
import 'package:instagram_ui/Widgets/post_view.dart';
import 'package:instagram_ui/Widgets/story_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final _homeController = Get.put(HomeController());
  var selectedBottomBarItem = 0;

  Widget bindStoryListView(
      List<StoryDataModel> storyList, double listViewHeight) {
    return storyList.isEmpty
        ? Container()
        : ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: storyList.length,
            itemBuilder: (context, index) {
              return StoryView(
                (listViewHeight) * 0.5,
                storyList[index],
              );
            },
          );
  }

  Widget bindPostListView(List<PostDataModel> postList, double size) {
    return postList.isEmpty
        ? Container()
        : ListView.builder(
            itemCount: postList.length,
            itemBuilder: (context, index) {
              return PostView(postList[index], size);
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final storyListViewHeight = (mediaQuery.size.height) * 0.14;

    final body = SafeArea(
      child: Column(
        children: [
          AppBarView(),
          Container(
            height: storyListViewHeight,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: bindStoryListView(
                _homeController.getStoryList, storyListViewHeight),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
            height: 0.4,
          ),
          Expanded(
            child: bindPostListView(
                _homeController.getPostList, mediaQuery.size.height),
          ),
        ],
      ),
    );

    return Scaffold(
      body: body,
      bottomNavigationBar: Container(
        child: BottomNavBarWidget(
          selectedIndex: selectedBottomBarItem,
          items: navBarsItems(),
          onItemSelected: (value) {
            setState(() {
              selectedBottomBarItem = value;
            });
          },
        ),
      ),
    );
  }
}
