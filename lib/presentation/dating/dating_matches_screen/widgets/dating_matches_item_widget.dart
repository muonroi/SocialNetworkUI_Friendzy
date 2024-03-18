import 'package:flutter/widgets.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/models/dating_matches_item_model.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

// ignore: must_be_immutable
class MatchesItemWidget extends StatelessWidget {
  MatchesItemWidget(
    this.matchesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  MatchesItemModel matchesItemModelObj;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        children: [
          Container(
            height: 55.adaptSize,
            width: 55.adaptSize,
            decoration: AppDecoration.outlinePurple200.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder30,
            ),
            child: CustomIconButton(
              height: 55.adaptSize,
              width: 55.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPurpleTL28,
              alignment: Alignment.center,
              child: CustomImageView(
                imagePath: matchesItemModelObj.icon,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: LocalizationKeys.lblLikes.name.tr,
                  style: CustomTextStyles.bodyMediumff22172a,
                ),
                TextSpan(
                  text: LocalizationKeys.lbl32.name.tr,
                  style: CustomTextStyles.titleSmallffdd88cf,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
