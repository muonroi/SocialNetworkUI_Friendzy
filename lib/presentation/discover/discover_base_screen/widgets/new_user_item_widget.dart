import 'package:flutter/widgets.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/models/new_user_item_model.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

// ignore: must_be_immutable
class NewUsersItemWidget extends StatelessWidget {
  NewUsersItemWidget(
    this.newUsersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  NewUsersItemModel newUsersItemModelObj;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 7.v,
        ),
        child: Stack(children: [
          CustomImageView(
            imagePath: newUsersItemModelObj.image,
            radius: BorderRadius.circular(
              12.h,
            ),
            fit: BoxFit.cover,
            height: 150.h,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
              gradient: LinearGradient(
                begin: const Alignment(0.7, 0.34),
                end: const Alignment(0.3, 0.94),
                colors: [
                  theme.colorScheme.onError,
                  theme.colorScheme.primary,
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 55.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 3.v,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 4.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.outlinePurple2001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Text(
                    newUsersItemModelObj.tag!,
                    style: theme.textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 55.v),
              Container(
                width: 45.h,
                decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                  color: appTheme.gray50.withOpacity(0.6),
                ),
                child: Text(
                  newUsersItemModelObj.distance!,
                  style: CustomTextStyles.bodySmallOnErrorContainer,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 4.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newUsersItemModelObj.halimaCounter!,
                    style: CustomTextStyles.titleSmallBold,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      top: 4.v,
                      bottom: 6.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.tealA400,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.v),
              Text(
                newUsersItemModelObj.berlin!,
                style: theme.textTheme.bodySmall!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
