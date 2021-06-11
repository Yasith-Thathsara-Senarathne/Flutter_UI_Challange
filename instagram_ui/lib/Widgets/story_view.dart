import 'package:flutter/material.dart';
import 'package:instagram_ui/Models/StoryDataModel.dart';
import 'package:instagram_ui/Widgets/story_circle_painter.dart';

class StoryView extends StatelessWidget {
  final double size;
  final StoryDataModel storyData;

  StoryView(this.size, this.storyData);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size * 1.3,
            height: size * 1.3,
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xFF9E2692),
                  Color(0xFFFAA958),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size * 1.2,
                  height: size * 1.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size * 1.1,
                        height: size * 1.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.yellow,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset(
                            storyData.profileImageName,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            storyData.name,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
