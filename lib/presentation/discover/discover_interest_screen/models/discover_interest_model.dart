import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';

class DiscoverByInterestModel extends Equatable {
  const DiscoverByInterestModel(
      {required this.interestTitle,
      required this.interestImage,
      required this.interestPeople,
      required this.peopleImages});
  DiscoverByInterestModel copyWith() {
    return DiscoverByInterestModel(
        interestTitle: 'Not found',
        interestImage: ImageConstant.imageNotFound,
        interestPeople: 0,
        peopleImages: null);
  }

  final String interestTitle;
  final String interestImage;
  final int interestPeople;
  final List<String>? peopleImages;
  @override
  List<Object?> get props =>
      [interestTitle, interestImage, interestPeople, peopleImages];
}
