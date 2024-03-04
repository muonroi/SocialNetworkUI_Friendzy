import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/widget/app_bar/custom_icon_button.dart';
import 'package:muonroi_friends/widget/app_bar/custom_image_view.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
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
          height: 40.adaptSize,
          width: 40.adaptSize,
          decoration: IconButtonStyleHelper.outlinePrimaryTL24,
          child: CustomImageView(
            imagePath: ImageConstant.imgIconPrimary48x48,
          ),
        ),
      ),
    );
  }
}
