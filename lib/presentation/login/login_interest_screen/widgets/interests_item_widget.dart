import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/login/login_interest_screen/models/login_select_interest_item_model.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

// ignore: must_be_immutable
class InterestsItemWidget extends StatelessWidget {
  InterestsItemWidget(
    this.interestsItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );
  InterestsItemModel interestsItemModelObj;
  Function(bool)? onSelectedChipView;
  @override
  Widget build(BuildContext context) {
    return RawChip(
      avatar: CustomImageView(
        imagePath: interestsItemModelObj.imagePath,
        width: 20.h,
        height: 40.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        interestsItemModelObj.category!,
        style: TextStyle(
          color: (interestsItemModelObj.isSelected ?? false)
              ? theme.colorScheme.onErrorContainer.withOpacity(1)
              : theme.colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (interestsItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      selectedColor: appTheme.purple200,
      shape: (interestsItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.primary.withOpacity(0.2),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.primary.withOpacity(0.2),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
