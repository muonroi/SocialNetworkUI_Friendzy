import 'package:equatable/equatable.dart';

class HomeSearchPartnersModel extends Equatable {
  const HomeSearchPartnersModel(
      {required this.id,
      required this.name,
      required this.address,
      required this.age,
      this.facebookUrl,
      this.instagramUrl,
      required this.images,
      required this.distance,
      required this.percentMatch});
  final int id;
  final String name;
  final String address;
  final int age;
  final String? facebookUrl;
  final String? instagramUrl;
  final List<String> images;
  final double distance;
  final int percentMatch;

  @override
  List<Object?> get props => [];
}
