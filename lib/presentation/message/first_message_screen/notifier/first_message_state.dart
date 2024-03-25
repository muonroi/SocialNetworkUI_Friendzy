part of 'first_message_notifier.dart';

// ignore: must_be_immutable
class FirstTimeChatState extends Equatable {
  FirstTimeChatState({this.firstTimeChatModelObj});
  FirstTimeChatModel? firstTimeChatModelObj;
  @override
  List<Object?> get props => [
        firstTimeChatModelObj,
      ];
  FirstTimeChatState copyWith({FirstTimeChatModel? firstTimeChatModelObj}) {
    return FirstTimeChatState(
      firstTimeChatModelObj:
          firstTimeChatModelObj ?? this.firstTimeChatModelObj,
    );
  }
}
