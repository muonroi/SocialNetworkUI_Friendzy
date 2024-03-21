import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/models/dating_match_item_model.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/models/dating_matches_item_model.dart';

// ignore: must_be_immutable
class MatchesModel extends Equatable {
  MatchesModel({
    this.matchesItemList = const [],
    this.matchItemList = const [],
  });
  List<MatchesItemModel> matchesItemList;
  List<MatchItemModel> matchItemList;
  MatchesModel copyWith({
    List<MatchesItemModel>? matchesItemList,
    List<MatchItemModel>? matchItemList,
  }) {
    return MatchesModel(
      matchesItemList: matchesItemList ?? this.matchesItemList,
      matchItemList: matchItemList ?? this.matchItemList,
    );
  }

  @override
  List<Object?> get props => [matchesItemList, matchItemList];
}
