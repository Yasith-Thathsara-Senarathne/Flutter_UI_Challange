class StoryDataModel {
  final String name;
  final String profileImage;
  final String storyImage;
  final bool isCreateStory;

  StoryDataModel(
    this.name,
    this.profileImage,
    this.storyImage, {
    this.isCreateStory = false,
  });
}
