import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class FirstTimeChatModel extends Equatable {
  FirstTimeChatModel(
      {this.friendName, this.timeConnected, this.friendImage, this.type});
  FirstTimeChatModel copyWith() {
    return FirstTimeChatModel();
  }

  String? friendName;
  int? timeConnected;
  String? friendImage;
  String? type;
  @override
  List<Object?> get props => [];
}
