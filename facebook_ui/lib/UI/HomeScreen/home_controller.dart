import 'package:facebook_ui/Models/ActiveUserDataModel.dart';
import 'package:facebook_ui/Models/StoryDataModel.dart';
import 'package:facebook_ui/Utils/constants.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  List<ActiveUserDataModel> get getActiveUserList {
    return [
      ActiveUserDataModel(ImageNames.fbRoomLargeIcon, isCreateRoom: true),
      ActiveUserDataModel(ImageNames.person01),
      ActiveUserDataModel(ImageNames.person02),
      ActiveUserDataModel(ImageNames.person03),
      ActiveUserDataModel(ImageNames.person04),
      ActiveUserDataModel(ImageNames.person05),
      ActiveUserDataModel(ImageNames.person06),
      ActiveUserDataModel(ImageNames.person07),
    ];
  }

  List<StoryDataModel> get getStoryList {
    return [
      StoryDataModel('', ImageNames.user, '', isCreateStory: true),
      StoryDataModel('Arthur', ImageNames.person01,
          'https://images.unsplash.com/photo-1624268450274-84f420bc9e70?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
      StoryDataModel('James', ImageNames.person07,
          'https://images.unsplash.com/photo-1625984012196-0672ca4c38db?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=658&q=80'),
      StoryDataModel('Mike', ImageNames.person06,
          'https://images.unsplash.com/photo-1625980121927-05358c81b80c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80'),
      StoryDataModel('Matt', ImageNames.person03,
          'https://images.unsplash.com/photo-1625957157805-24764536466a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80'),
      StoryDataModel('John', ImageNames.person04,
          'https://images.unsplash.com/photo-1625974670605-0f41bed0a699?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
    ];
  }
}
