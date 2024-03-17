part of '../dating_connect_friend_screen.dart';

Widget _buildConnect(BuildContext context, WidgetRef ref) {
  return Align(
      alignment: Alignment.topCenter,
      child: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(bottom: 260.v),
          padding: EdgeInsets.symmetric(vertical: 42.v),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder24,
              image: DecorationImage(
                  image: AssetImage(ImageConstant.imgGroup14),
                  fit: BoxFit.cover)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  2,
                  (index) => CoupleConnectWidget(
                        isFriend: index == 0 ? true : false,
                        image: index == 0
                            ? ref
                                .watch(connectMakeFriendsNotifier)
                                .connectMakeFriendsModelObj!
                                .categoryItemList[index]
                                .friendOfImage!
                            : ref
                                .watch(connectMakeFriendsNotifier)
                                .connectMakeFriendsModelObj!
                                .categoryItemList[index]
                                .userOfImage!,
                        name: index == 0
                            ? ref
                                .watch(connectMakeFriendsNotifier)
                                .connectMakeFriendsModelObj!
                                .categoryItemList[index]
                                .friendOfName!
                            : LocalizationKeys.lblYou.name.tr,
                      )))));
}
