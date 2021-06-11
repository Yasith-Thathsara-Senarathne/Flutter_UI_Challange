import 'package:get/get.dart';
import 'package:instagram_ui/Models/PostDataModel.dart';
import 'package:instagram_ui/Models/StoryDataModel.dart';
import 'package:instagram_ui/Utils/constants.dart';

class HomeController extends GetxController {
  List<StoryDataModel> get getStoryList {
    return [
      StoryDataModel('Votre story', ImageNames.personImage01, true),
      StoryDataModel('Arthur', ImageNames.personImage02, false),
      StoryDataModel('James', ImageNames.personImage03, false),
      StoryDataModel('Mike', ImageNames.personImage04, false),
      StoryDataModel('Matt', ImageNames.personImage05, false),
      StoryDataModel('John', ImageNames.personImage06, false),
      StoryDataModel('Michel', ImageNames.personImage07, false),
    ];
  }

  List<PostDataModel> get getPostList {
    return [
      PostDataModel(
          ImageNames.personImage03,
          'Arthur',
          'Paris',
          [
            ImageNames.personImage02,
            ImageNames.personImage03,
            ImageNames.personImage04
          ],
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standards.'),
      PostDataModel(
          ImageNames.personImage05,
          'Mark',
          'Some where on earth',
          [
            ImageNames.personImage05,
            ImageNames.personImage01,
            ImageNames.personImage03
          ],
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standards.'),
      PostDataModel(
          ImageNames.personImage02,
          'John',
          '',
          [
            ImageNames.personImage07,
            ImageNames.personImage06,
            ImageNames.personImage01
          ],
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standards.'),
    ];
  }
}
