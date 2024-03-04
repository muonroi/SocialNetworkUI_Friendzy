part of 'spash_notifier.dart';

// ignore: must_be_immutable
class SpashState extends Equatable {
  SpashState({this.spashModelObj});
  SpashModel? spashModelObj;
  @override
  List<Object?> get props => [
        spashModelObj,
      ];
  SpashState copyWith({SpashModel? spashModelObj}) {
    return SpashState(
      spashModelObj: spashModelObj ?? this.spashModelObj,
    );
  }
}
