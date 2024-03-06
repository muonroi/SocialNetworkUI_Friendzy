import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/widget/app_bar/custom_elevated_button.dart';

/// Section Widget
Widget buildContinueContainer(
    BuildContext context, String text, void Function()? onTap, bool isEnable) {
  return CustomElevatedButton(
      text: text,
      margin: EdgeInsets.symmetric(horizontal: 40.h),
      buttonTextStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: appTheme.indigo50,
            fontSize: 16.adaptSize,
            fontWeight: FontWeight.w600,
          ),
      isDisabled: !isEnable,
      onPressed: onTap);
}
