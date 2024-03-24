part of '../main_message_screen.dart';

Widget _buildStoryFriends(WidgetRef ref, StoryFriendViewModel model) {
  return Container(
    height: 92.v,
    width: 80.h,
    margin: EdgeInsets.only(bottom: 9.v),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: AppDecoration.fillPurple2001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Container(
              height: 92.v,
              width: 80.h,
              decoration: BoxDecoration(
                color: appTheme.gray400,
                borderRadius: BorderRadius.circular(16.h),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: model.imageFriendUrl,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
                SizedBox(height: 5.v),
                Text(
                  '${model.likeCount}',
                  style: CustomTextStyles.titleMediumOnErrorContainer,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
