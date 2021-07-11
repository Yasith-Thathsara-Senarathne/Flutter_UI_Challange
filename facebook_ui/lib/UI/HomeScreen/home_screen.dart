import 'package:facebook_ui/Utils/bottom_menu.dart';
import 'package:facebook_ui/Utils/constants.dart';
import 'package:facebook_ui/Widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  var selectedBottomBarItem = 0;
  @override
  Widget build(BuildContext context) {
    final body = SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'facebook',
                  style: TextStyle(
                    color: AppColors.dodgerBlue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.ghost.withOpacity(0.7),
                      child: Padding(
                        padding: EdgeInsets.all(9),
                        child: Image.asset(ImageNames.searchIcon),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.ghost.withOpacity(0.7),
                      child: Padding(
                        padding: EdgeInsets.all(9),
                        child: Image.asset(ImageNames.messangerIcon),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            color: AppColors.ghost,
            height: 0.7,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: ExactAssetImage(ImageNames.user),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'What\'s on your mind?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.ghost,
            height: 1,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 16,
              right: 16,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Image.asset(
                      ImageNames.fbLiveIcon,
                      width: 22,
                      height: 22,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text('Live'),
                  ],
                ),
                Container(
                  color: AppColors.ghost,
                  width: 1,
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      ImageNames.fbPhotoIcon,
                      width: 22,
                      height: 22,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text('Photo'),
                  ],
                ),
                Container(
                  color: AppColors.ghost,
                  width: 1,
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      ImageNames.fbRoomSmallIcon,
                      width: 22,
                      height: 22,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text('Room'),
                  ],
                ),
              ],
            ),
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
