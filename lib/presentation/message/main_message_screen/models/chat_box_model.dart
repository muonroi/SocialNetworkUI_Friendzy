class ChatBoxViewModel {
  ChatBoxViewModel(
      {this.friendName,
      this.previewMessage,
      this.lastTimeMessage,
      this.id,
      this.imageFriend}) {
    friendName = friendName ?? "Alfredo Calzoni";
    previewMessage = previewMessage ?? "What about that new jacket if I ...";
    lastTimeMessage = lastTimeMessage ?? "09:18";
    id = id ?? "";
    imageFriend = imageFriend ?? "";
  }
  String? friendName;
  String? previewMessage;
  String? lastTimeMessage;
  String? id;
  String? imageFriend;
}
