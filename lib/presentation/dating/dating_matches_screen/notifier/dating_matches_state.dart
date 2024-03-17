part of 'dating_matches_notifier.dart';

// ignore: must_be_immutable
class MatchesState extends Equatable {
  MatchesState({this.matchesModelObj});
  MatchesModel? matchesModelObj;
  @override
  List<Object?> get props => [
        matchesModelObj,
      ];
  MatchesState copyWith({MatchesModel? matchesModelObj}) {
    return MatchesState(
      matchesModelObj: matchesModelObj ?? this.matchesModelObj,
    );
  }
}
