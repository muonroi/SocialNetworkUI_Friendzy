import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

Widget buildStep(
    BuildContext context, String stepTile, void Function()? onTap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 33.v),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: stepTile,
                style: theme.textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: CustomIconButton(
          height: 56.adaptSize,
          width: 56.adaptSize,
          padding: EdgeInsets.all(16.h),
          decoration: IconButtonStyleHelper.outlinePrimary,
          onTap: onTap,
          child:
              CustomImageView(imagePath: ImageConstant.imgIconOnerrorcontainer),
        ),
      ),
    ],
  );
}
