import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/models/message_model.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/models/chat_box_model.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/models/story_friends_model.dart';
part 'message_state.dart';

final messagesNotifier = StateNotifierProvider<MessagesNotifier, MessagesState>(
    (ref) => MessagesNotifier(MessagesState(
            messagesModelObj: MessagesModel(storiesViewModel: [
          StoryFriendViewModel(
              id: 1, imageFriendUrl: '', idOfFriend: 1, likeCount: 32),
          StoryFriendViewModel(
              id: 1, imageFriendUrl: '', idOfFriend: 1, likeCount: 32),
          StoryFriendViewModel(
              id: 1, imageFriendUrl: '', idOfFriend: 1, likeCount: 32)
        ], chatList: [
          ChatBoxViewModel(
              friendName: "Alfredo Calzoni",
              previewMessage: "What about that new jacket if I ...",
              lastTimeMessage: "09:18"),
          ChatBoxViewModel(
              friendName: "Brandon Aminoff",
              previewMessage: "I’ve already registered, can’t wai...",
              lastTimeMessage: "08:06"),
          ChatBoxViewModel(
              friendName: "Amina Mina",
              previewMessage: "It will have two lines of heading ..."),
          ChatBoxViewModel(
              friendName: "Savanna Hall",
              previewMessage: "It will have two lines of heading ..."),
          ChatBoxViewModel(
              friendName: "Alfredo Calzoni",
              previewMessage: "What about that new jacket if I ...",
              lastTimeMessage: "09:18"),
          ChatBoxViewModel(
              friendName: "Brandon Aminoff",
              previewMessage: "I’ve already registered, can’t wai...",
              lastTimeMessage: "08:06"),
          ChatBoxViewModel(
              friendName: "Amina Mina",
              previewMessage: "It will have two lines of heading ..."),
          ChatBoxViewModel(
              friendName: "Savanna Hall",
              previewMessage: "It will have two lines of heading ...")
        ]))));

class MessagesNotifier extends StateNotifier<MessagesState> {
  MessagesNotifier(MessagesState state) : super(state);
}
