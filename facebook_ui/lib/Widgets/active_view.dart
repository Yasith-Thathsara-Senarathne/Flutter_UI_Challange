import 'package:facebook_ui/Models/ActiveUserDataModel.dart';
import 'package:facebook_ui/Utils/constants.dart';
import 'package:flutter/material.dart';

class ActiveView extends StatelessWidget {
  final ActiveUserDataModel _activeUserDataModel;

  ActiveView(this._activeUserDataModel);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: _activeUserDataModel.isCreateRoom
          ? Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: AppColors.dodgerBlue.withOpacity(0.4),
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Image.asset(
                      _activeUserDataModel.profileImage,
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Create\nRoom',
                      style: TextStyle(
                        color: AppColors.dodgerBlue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            )
          : CircleAvatar(
              radius: 22,
              backgroundImage:
                  ExactAssetImage(_activeUserDataModel.profileImage),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 9,
                    right: 0,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: AppColors.apple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
