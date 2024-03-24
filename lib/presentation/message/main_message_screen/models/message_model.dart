import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/models/chat_box_model.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/models/story_friends_model.dart';

// ignore: must_be_immutable
class MessagesModel extends Equatable {
  MessagesModel({this.chatList = const [], this.storiesViewModel = const []});
  List<ChatBoxViewModel> chatList;
  List<StoryFriendViewModel> storiesViewModel;
  MessagesModel copyWith(
      {List<ChatBoxViewModel>? chatList,
      List<StoryFriendViewModel>? storiesViewModel}) {
    return MessagesModel(
        chatList: chatList ?? this.chatList,
        storiesViewModel: storiesViewModel ?? this.storiesViewModel);
  }

  @override
  List<Object?> get props => [chatList, storiesViewModel];
}
