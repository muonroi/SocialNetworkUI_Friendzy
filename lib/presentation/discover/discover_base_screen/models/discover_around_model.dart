import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class DiscoverAroundModel extends Equatable {
  final List<UserDiscoverAroundModel> userDiscoverAroundModelList;

  const DiscoverAroundModel({required this.userDiscoverAroundModelList});
  @override
  List<Object?> get props => [userDiscoverAroundModelList];
}

class UserDiscoverAroundModel {
  final int userId;
  final double latitude;
  final double longitude;
  final bool isUser;
  final String imageUrl;
  UserDiscoverAroundModel(
      {required this.imageUrl,
      required this.isUser,
      required this.userId,
      required this.latitude,
      required this.longitude});
  Map<String, dynamic> toJson() {
    return {
      'imageUrl': imageUrl,
      'isUser': isUser,
      'userId': userId,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
