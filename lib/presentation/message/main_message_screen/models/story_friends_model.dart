class StoryFriendViewModel {
  int? id;
  String? imageFriendUrl;
  int? idOfFriend;
  int? likeCount;
  StoryFriendViewModel(
      {this.id, this.imageFriendUrl, this.idOfFriend, this.likeCount}) {
    id = id ?? 0;
    imageFriendUrl = imageFriendUrl ?? '';
    idOfFriend = idOfFriend ?? 0;
    likeCount = likeCount ?? 0;
  }
}
