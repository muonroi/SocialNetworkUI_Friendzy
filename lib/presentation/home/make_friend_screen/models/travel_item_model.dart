import 'package:muonroi_friends/core/utils/image_constant.dart';

class TravelItemModel {
  TravelItemModel({
    this.ifYouCouldLive,
    this.mirandaKehlani,
    this.stuttgart,
    this.icon,
    this.id,
  }) {
    ifYouCouldLive = ifYouCouldLive ??
        "If you could live anywhere in the world, where would you pick?";
    mirandaKehlani = mirandaKehlani ?? "Miranda Kehlani";
    stuttgart = stuttgart ?? "STUTTGART";
    icon = icon ?? ImageConstant.imgIvanaCajina7;
    id = id ?? "";
  }
  String? ifYouCouldLive;
  String? mirandaKehlani;
  String? stuttgart;
  String? icon;
  String? id;
}
