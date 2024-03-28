import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/message/text_chat_screen/models/text_chat_model.dart';

// ignore: must_be_immutable
class ChatModel extends Equatable {
  ChatModel({this.chatItemsList = const []});

  List<TextChatModel> chatItemsList;

  ChatModel copyWith({List<TextChatModel>? chatItemsList}) {
    return ChatModel(
      chatItemsList: chatItemsList ?? this.chatItemsList,
    );
  }

  @override
  List<Object?> get props => [chatItemsList];
}
