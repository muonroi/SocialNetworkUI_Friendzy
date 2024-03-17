part of '../dating_connect_friend_screen.dart';

class CoupleConnectWidget extends StatelessWidget {
  final bool isFriend;
  final String image;
  final String name;
  const CoupleConnectWidget({
    super.key,
    required this.isFriend,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 148.v,
        width: 124.h,
        margin: EdgeInsets.only(bottom: 90.v),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 124.adaptSize,
                  width: 124.adaptSize,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.fill),
                      color: appTheme.gray400,
                      borderRadius: BorderRadius.circular(62.h),
                      border: Border.all(
                          color: isFriend
                              ? appTheme.purple200
                              : theme.colorScheme.onErrorContainer
                                  .withOpacity(1),
                          width: 6.h),
                      boxShadow: [
                        BoxShadow(
                            color: theme.colorScheme.onPrimary,
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: const Offset(0, 0))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 40.v,
                  width: 76.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                            height: 32.v,
                            width: 76.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgTelevision,
                                      height: 32.v,
                                      width: 76.h,
                                      radius: BorderRadius.circular(8.h),
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(bottom: 6.v),
                                          child: Text(name,
                                              style:
                                                  theme.textTheme.titleSmall)))
                                ]))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 30.h),
                            padding: EdgeInsets.all(5.h),
                            decoration: AppDecoration.fillPurple.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Container(
                                height: 6.adaptSize,
                                width: 6.adaptSize,
                                decoration: BoxDecoration(
                                    color: appTheme.purple5001,
                                    borderRadius: BorderRadius.circular(3.h)))))
                  ])))
        ]));
  }
}
