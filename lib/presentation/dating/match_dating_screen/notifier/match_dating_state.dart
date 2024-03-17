part of 'match_dating_notifier.dart';

// ignore: must_be_immutable
class MatchDatingState extends Equatable {
  MatchDatingState({this.matchDatingModelObj});
  MatchDatingModel? matchDatingModelObj;
  @override
  List<Object?> get props => [
        matchDatingModelObj,
      ];
  MatchDatingState copyWith({MatchDatingModel? matchDatingModelObj}) {
    return MatchDatingState(
      matchDatingModelObj: matchDatingModelObj ?? this.matchDatingModelObj,
    );
  }
}
