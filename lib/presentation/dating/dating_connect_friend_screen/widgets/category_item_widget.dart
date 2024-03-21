import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/dating/dating_connect_friend_screen/models/category_item_model.dart';

// ignore: must_be_immutable
class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget(
    this.categoryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  CategoryItemModel categoryItemModelObj;
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
        categoryItemModelObj.category!,
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (categoryItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      selectedColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      shape: (categoryItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onErrorContainer.withOpacity(0.6),
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
    );
  }
}
