part of 'message_notifier.dart';

// ignore: must_be_immutable
class MessagesState extends Equatable {
  MessagesState({this.messagesModelObj});
  MessagesModel? messagesModelObj;

  @override
  List<Object?> get props => [
        messagesModelObj,
      ];
  MessagesState copyWith({MessagesModel? messagesModelObj}) {
    return MessagesState(
      messagesModelObj: messagesModelObj ?? this.messagesModelObj,
    );
  }
}
