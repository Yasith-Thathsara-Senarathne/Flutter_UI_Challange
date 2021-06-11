import 'package:flutter/material.dart';
import 'package:instagram_ui/Utils/Constants.dart';

class AppBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Image.asset(
            ImageNames.instagramImage,
            color: Colors.black,
            width: 130,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Row(
            children: [
              Image.asset(
                ImageNames.addImage,
                color: Colors.black,
                width: 25,
                height: 25,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                ImageNames.heartImage,
                color: Colors.black,
                width: 25,
                height: 25,
              ),
              SizedBox(
                width: 16,
              ),
              Image.asset(
                ImageNames.shareImage,
                color: Colors.black,
                width: 25,
                height: 25,
              ),
            ],
          ),
        )
      ],
    );
  }
}
