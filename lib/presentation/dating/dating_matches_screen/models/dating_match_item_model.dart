import 'package:muonroi_friends/core/app_export.dart';

class MatchItemModel {
  MatchItemModel(
      {this.distance, this.jamesCounter, this.hanover, this.id, this.image}) {
    distance = distance ?? "1.3 km away";
    jamesCounter = jamesCounter ?? "James, 20";
    hanover = hanover ?? "HANOVER";
    id = id ?? "";
    image ?? ImageConstant.imgIvanaCajina7;
  }
  String? distance;
  String? jamesCounter;
  String? hanover;
  String? id;
  String? image;
}
