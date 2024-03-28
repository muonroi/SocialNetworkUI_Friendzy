import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbuttonAction extends StatelessWidget {
  AppbarTrailingIconbuttonAction({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );
  String? imagePath;
  EdgeInsetsGeometry? margin;
  Function? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 25.adaptSize,
          width: 25.adaptSize,
          decoration: IconButtonStyleHelper.outlineOnErrorContainer,
          child: CustomImageView(
            imagePath: ImageConstant.imgDetailSetting,
          ),
        ),
      ),
    );
  }
}
