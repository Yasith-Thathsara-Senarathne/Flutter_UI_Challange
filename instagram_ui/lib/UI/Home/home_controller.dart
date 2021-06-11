import 'package:get/get.dart';
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
}
