import 'package:flutter/material.dart';
import 'package:instagram_ui/Utils/constants.dart';
import 'package:instagram_ui/Widgets/app_bar_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final body = SafeArea(
      child: Column(
        children: [
          AppBarView(),
          Container(
            color: Colors.yellow,
            height: (mediaQuery.size.height) * 0.14,
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
            height: 0.4,
          )
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
