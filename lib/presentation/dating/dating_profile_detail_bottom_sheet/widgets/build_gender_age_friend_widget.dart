part of '../dating_profile_detail_bottom_sheet.dart';

Widget _buildInfoGenderAgeFriend(
    BuildContext context, DatingProfileDetailsVoneState ref) {
  return Container(
    width: double.maxFinite,
    padding: EdgeInsets.symmetric(
      horizontal: 32.h,
      vertical: 19.v,
    ),
    decoration: AppDecoration.fillPurple20033,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPurpleTL24,
              child: CustomImageView(
                imagePath: ImageConstant.imgIcon,
              ),
            ),
            SizedBox(height: 13.v),
            Opacity(
              opacity: 0.5,
              child: Text(
                LocalizationKeys.lblGender.name.tr,
                style: CustomTextStyles.bodyLargePrimary_2,
              ),
            ),
            SizedBox(height: 3.v),
            Text(
              ref.datingProfileDetailsVoneModelObj!.gender!,
              style: CustomTextStyles.bodyLarge18,
            ),
          ],
        ),
        Column(
          children: [
            CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPurpleTL24,
              child: CustomImageView(
                imagePath: ImageConstant.imgIconCalendar,
              ),
            ),
            SizedBox(height: 15.v),
            Opacity(
              opacity: 0.5,
              child: Text(
                LocalizationKeys.lblAge.name.tr,
                style: CustomTextStyles.bodyLargePrimary_2,
              ),
            ),
            SizedBox(height: 3.v),
            Text(
              '${ref.datingProfileDetailsVoneModelObj!.age}',
              style: CustomTextStyles.bodyLarge18,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 1.h),
          child: Column(
            children: [
              CustomIconButton(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(12.h),
                decoration: IconButtonStyleHelper.fillPurpleTL24,
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconHeart,
                ),
              ),
              SizedBox(height: 13.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  LocalizationKeys.lblFriends.name.tr,
                  style: CustomTextStyles.bodyLargePrimary_2,
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                '${ref.datingProfileDetailsVoneModelObj!.countFriends}',
                style: CustomTextStyles.bodyLarge18,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
