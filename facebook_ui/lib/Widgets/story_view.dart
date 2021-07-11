import 'package:facebook_ui/Models/StoryDataModel.dart';
import 'package:facebook_ui/Utils/constants.dart';
import 'package:flutter/material.dart';

class StoryView extends StatelessWidget {
  final StoryDataModel _storyDataModel;
  final double viewHeight;

  StoryView(this._storyDataModel, this.viewHeight);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: _storyDataModel.isCreateStory
          ? Container(
              width: viewHeight * 0.45,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: AppColors.dodgerBlue,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 0.8,
                  color: AppColors.ghost,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      _storyDataModel.profileImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: viewHeight * 0.6,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(bottom: 6),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Create\nstory',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: viewHeight * 0.5,
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        ImageNames.fbStoryAddIcon,
                        width: 50,
                        height: 50,
                      ))
                ],
              ),
            )
          : Container(
              width: viewHeight * 0.45,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.network(
                      _storyDataModel.storyImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 6,
                    left: 6,
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: AppColors.dodgerBlue,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            ExactAssetImage(_storyDataModel.profileImage),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black.withOpacity(0.15),
                      padding: EdgeInsets.all(6),
                      child: Text(
                        _storyDataModel.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
