import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/models/interest_item_model.dart';

// ignore: must_be_immutable
class InterestItemWidget extends StatelessWidget {
  InterestItemWidget(
    this.interestItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );
  InterestItemModel interestItemModelObj;
  Function(bool)? onSelectedChipView1;
  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        interestItemModelObj.category!,
        style: TextStyle(
          color: (interestItemModelObj.isSelected ?? false)
              ? theme.colorScheme.onErrorContainer.withOpacity(1)
              : theme.colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (interestItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      selectedColor: appTheme.purple200,
      shape: (interestItemModelObj.isSelected ?? false)
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
        onSelectedChipView1?.call(value);
      },
    );
  }
}
