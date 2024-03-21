import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/home/home_make_friend_screen/models/travel_item_model.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:muonroi_friends/widget/custom_outlined_button.dart';

// ignore: must_be_immutable
class TravelItemWidget extends StatelessWidget {
  TravelItemWidget(
    this.travelItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  TravelItemModel travelItemModelObj;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder24,
        image: DecorationImage(
            image: NetworkImage(travelItemModelObj.postImage),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomOutlinedButton(
            height: 40.v,
            width: 90.h,
            text: LocalizationKeys.lblTravel.name.tr,
            margin: EdgeInsets.only(left: 16.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 6.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTravel,
                height: 20.v,
                width: 16.h,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 123.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 233.h,
                          child: Text(
                            travelItemModelObj.postTitle,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleLargeOnErrorContainer
                                .copyWith(
                              height: 1.20,
                            ),
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Row(
                          children: [
                            Container(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.gray400,
                                  borderRadius: BorderRadius.circular(
                                    20.h,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(travelItemModelObj.icon),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                top: 3.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    travelItemModelObj.author,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    travelItemModelObj.address,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      color: theme.colorScheme.background,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30.h,
                    bottom: 68.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 20.v,
                  ),
                  decoration: AppDecoration.fillOnErrorContainer1.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration:
                              IconButtonStyleHelper.fillOnErrorContainer,
                          child: CustomImageView(
                            imagePath: travelItemModelObj.icon,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 40.v,
                              child: VerticalDivider(
                                width: 3.h,
                                thickness: 3.v,
                                color: theme.colorScheme.onErrorContainer
                                    .withOpacity(0.5),
                                indent: 14.h,
                                endIndent: 6.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: CustomIconButton(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.all(10.h),
                                  decoration: IconButtonStyleHelper
                                      .fillOnErrorContainer,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgIcon40x40,
                                  ),
                                  onTap: () => onTapScreenTitle(
                                      AppRoutes.datingProfileDetailScreen)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration:
                              IconButtonStyleHelper.fillOnErrorContainer,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIcon1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
