part of 'search_partners_notifier.dart';

// ignore: must_be_immutable
class HomeSearchPartnersState extends Equatable {
  HomeSearchPartnersState({this.homeSearchPartnersModelObj});
  HomeSearchPartnersModel? homeSearchPartnersModelObj;
  @override
  List<Object?> get props => [
        homeSearchPartnersModelObj,
      ];
  HomeSearchPartnersState copyWith(
      {HomeSearchPartnersModel? homeSearchPartnersModelObj}) {
    return HomeSearchPartnersState(
      homeSearchPartnersModelObj:
          homeSearchPartnersModelObj ?? this.homeSearchPartnersModelObj,
    );
  }
}
