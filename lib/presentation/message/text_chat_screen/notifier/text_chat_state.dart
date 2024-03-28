part of 'text_chat_notifier.dart';

// ignore: must_be_immutable
class TextChatState extends Equatable {
  TextChatState({
    this.messageController,
    this.recorderController,
    this.textChatModelObj,
    this.playerController,
  });
  TextEditingController? messageController;
  RecorderController? recorderController;
  ChatModel? textChatModelObj;
  PlayerController? playerController;
  @override
  List<Object?> get props => [
        messageController,
        recorderController,
        textChatModelObj,
        playerController
      ];
  TextChatState copyWith(
      {TextEditingController? messageController,
      RecorderController? recorderController,
      ChatModel? textChatModelObj,
      PlayerController? playerController}) {
    return TextChatState(
        messageController: messageController ?? this.messageController,
        textChatModelObj: textChatModelObj ?? this.textChatModelObj,
        recorderController: recorderController ?? this.recorderController,
        playerController: playerController ?? this.playerController);
  }
}
