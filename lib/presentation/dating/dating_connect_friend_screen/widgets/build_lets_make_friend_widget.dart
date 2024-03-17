part of '../dating_connect_friend_screen.dart';

Widget _buildLetSMakeFriend(BuildContext context, WidgetRef ref) {
  return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 23.v),
          decoration: AppDecoration.fillOnErrorContainer
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(LocalizationKeys.lblInterest.name.tr,
                    style: CustomTextStyles.titleLargePrimary),
                SizedBox(height: 15.v),
                Consumer(builder: (context, ref, _) {
                  return Wrap(
                      runSpacing: 12.v,
                      spacing: 12.h,
                      children: List<Widget>.generate(
                          ref
                                  .watch(connectMakeFriendsNotifier)
                                  .connectMakeFriendsModelObj
                                  ?.categoryItemList
                                  .length ??
                              0, (index) {
                        CategoryItemModel model = ref
                                .watch(connectMakeFriendsNotifier)
                                .connectMakeFriendsModelObj
                                ?.categoryItemList[index] ??
                            CategoryItemModel();
                        return CategoryItemWidget(model);
                      }));
                }),
                SizedBox(height: 17.v),
                Opacity(
                    opacity: 0.7,
                    child: Container(
                        width: 305.h,
                        margin: EdgeInsets.only(right: 5.h),
                        child: Text(LocalizationKeys.msgYouHave3Things.name.tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyLargePrimary
                                .copyWith(height: 1.50)))),
                SizedBox(height: 22.v),
                Row(children: [
                  CustomIconButton(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      padding: EdgeInsets.all(14.h),
                      decoration: IconButtonStyleHelper.outlinePrimaryTL281,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgIcon40x40)),
                  Expanded(
                      child: CustomElevatedButton(
                    text: LocalizationKeys.lblLetsTalk.name.tr,
                    margin: EdgeInsets.only(left: 16.h),
                    leftIcon: Container(
                        margin: EdgeInsets.only(right: 10.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgIconTalk,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    buttonTextStyle: CustomTextStyles.titleMediumWhite200Bold,
                  ))
                ])
              ])));
}
