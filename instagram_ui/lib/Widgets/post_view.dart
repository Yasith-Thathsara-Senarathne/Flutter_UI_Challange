import 'package:flutter/material.dart';
import 'package:instagram_ui/Models/PostDataModel.dart';
import 'package:instagram_ui/Utils/constants.dart';

class PostView extends StatelessWidget {
  final PostDataModel postData;
  final double width;
  final double height;

  PostView(this.postData, this.width, this.height);

  @override
  Widget build(BuildContext context) {
    final profileImageSize = (height) * 0.075;
    final postImageHeight = (height) * 0.5;

    Widget bindPostImages(List<String> postImageList) {
      return postImageList.isEmpty
          ? Container()
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: postImageList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  postImageList[index],
                  fit: BoxFit.cover,
                  width: width,
                );
              });
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: profileImageSize,
                height: profileImageSize,
                margin: EdgeInsets.only(
                  left: 10,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    postData.profileImageName,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postData.title,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    postData.subTitle,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: postImageHeight,
            child: bindPostImages(postData.postImages),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Image.asset(
                  ImageNames.heartImage,
                  color: Colors.black,
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset(
                  ImageNames.messageImage,
                  color: Colors.black,
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset(
                  ImageNames.shareImage,
                  color: Colors.black,
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: width - (10 + 10 + 25 + 12 + 20 + 12 + 25 + 25),
                ),
                Image.asset(
                  ImageNames.bookmarkImage,
                  color: Colors.black,
                  width: 25,
                  height: 25,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              postData.postCaption,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
