part of 'dating_profile_detail_notifier.dart';

// ignore: must_be_immutable
class DatingProfileDetailsVoneState extends Equatable {
  DatingProfileDetailsVoneState({this.datingProfileDetailsVoneModelObj});
  DatingProfileDetailsVoneModel? datingProfileDetailsVoneModelObj;
  @override
  List<Object?> get props => [
        datingProfileDetailsVoneModelObj,
      ];
  DatingProfileDetailsVoneState copyWith(
      {DatingProfileDetailsVoneModel? datingProfileDetailsVoneModelObj}) {
    return DatingProfileDetailsVoneState(
      datingProfileDetailsVoneModelObj: datingProfileDetailsVoneModelObj ??
          this.datingProfileDetailsVoneModelObj,
    );
  }
}
