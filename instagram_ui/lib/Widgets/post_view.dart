import 'package:flutter/material.dart';
import 'package:instagram_ui/Models/PostDataModel.dart';

class PostView extends StatelessWidget {
  final PostDataModel postData;
  final double size;

  PostView(this.postData, this.size);

  @override
  Widget build(BuildContext context) {
    final profileImageSize = (size) * 0.08;
    final postImageHeight = (size) * 0.45;

    Widget bindPostImages(List<String> postImageList) {
      return postImageList.isEmpty
          ? Container()
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: postImageList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  postImageList[index],
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
                      color: Colors.black54,
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
          Row(),
        ],
      ),
    );
  }
}
