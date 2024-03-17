import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';

class MatchDatingModel extends Equatable {
  const MatchDatingModel(
      {required this.nameOfUser,
      required this.nameOfFriend,
      required this.imageOfUser,
      required this.imageOfFriend,
      required this.matchPercentage,
      required this.initMatchPercentage});
  MatchDatingModel copyWith(MatchDatingModel request) {
    return MatchDatingModel(
        nameOfUser: request.nameOfUser,
        nameOfFriend: request.nameOfFriend,
        imageOfUser: request.imageOfUser ?? ImageConstant.imgIvanaCajina7,
        imageOfFriend: request.imageOfFriend ?? ImageConstant.imgWoman,
        matchPercentage: request.matchPercentage ?? 80,
        initMatchPercentage: request.initMatchPercentage ?? 0);
  }

  MatchDatingModel updateInitMatchPercentage(double newInitMatchPercentage) {
    return MatchDatingModel(
      nameOfUser: nameOfUser,
      nameOfFriend: nameOfFriend,
      imageOfUser: imageOfUser,
      imageOfFriend: imageOfFriend,
      matchPercentage: matchPercentage,
      initMatchPercentage: newInitMatchPercentage,
    );
  }

  final String? nameOfUser;
  final String? nameOfFriend;
  final String? imageOfUser;
  final String? imageOfFriend;
  final int? matchPercentage;
  final double? initMatchPercentage;
  @override
  List<Object?> get props => [
        nameOfUser,
        nameOfFriend,
        imageOfUser,
        imageOfFriend,
        matchPercentage,
        initMatchPercentage
      ];
}
