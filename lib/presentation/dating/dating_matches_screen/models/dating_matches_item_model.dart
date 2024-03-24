import 'package:muonroi_friends/core/utils/image_constant.dart';

class MatchesItemModel {
  MatchesItemModel({
    this.icon,
    this.id,
  }) {
    icon = icon ?? ImageConstant.imgFashion;
    id = id ?? "";
  }
  String? icon;
  String? id;
}
