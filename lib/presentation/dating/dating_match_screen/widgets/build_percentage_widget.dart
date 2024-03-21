part of '../dating_match_screen.dart';

Widget _buildPercentageWidget(
    BuildContext context, WidgetRef ref, MatchDatingState datingRef) {
  return SizedBox(
      height: 323.v,
      width: double.maxFinite,
      child: Stack(alignment: Alignment.topCenter, children: [
        CustomImageView(
            imagePath: ImageConstant.imgGroup14,
            height: 322.v,
            width: 375.h,
            radius: BorderRadius.circular(24.h),
            alignment: Alignment.center),
        Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
                height: 176.v,
                width: 312.h,
                child: Stack(alignment: Alignment.centerRight, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: EdgeInsets.only(right: 164.h),
                          padding: EdgeInsets.all(8.h),
                          decoration: AppDecoration.fillPurple.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.customBorderTL100),
                          child: Container(
                              height: 160.v,
                              width: 132.h,
                              decoration: BoxDecoration(
                                  color: appTheme.gray400,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(80.h),
                                      topRight: Radius.circular(80.h),
                                      bottomLeft: Radius.circular(80.h)),
                                  image: DecorationImage(
                                      image: AssetImage(datingRef
                                          .matchDatingModelObj!.imageOfUser!),
                                      fit: BoxFit.cover))))),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          margin: EdgeInsets.only(left: 164.h),
                          padding: EdgeInsets.all(8.h),
                          decoration: AppDecoration.fillOnErrorContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL1001),
                          child: Container(
                              height: 160.v,
                              width: 132.h,
                              decoration: BoxDecoration(
                                  color: appTheme.gray400,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(80.h),
                                      topRight: Radius.circular(80.h),
                                      bottomRight: Radius.circular(80.h)),
                                  image: DecorationImage(
                                      image: AssetImage(datingRef
                                          .matchDatingModelObj!.imageOfFriend!),
                                      fit: BoxFit.cover))))),
                  Align(
                      alignment: Alignment.center,
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: const EdgeInsets.all(0),
                          color: theme.colorScheme.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder30),
                          child: Container(
                              height: 56.adaptSize,
                              width: 56.adaptSize,
                              padding: EdgeInsets.all(8.h),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        child: CircularPercentIndicator(
                                            animationDuration: 3500,
                                            animation: true,
                                            percent: datingRef
                                                    .matchDatingModelObj!
                                                    .matchPercentage! /
                                                100,
                                            backgroundColor: appTheme.purple200
                                                .withOpacity(0.46),
                                            progressColor: appTheme.purple200,
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            radius: 20.0,
                                            onPercentValue: (value) {
                                              ref
                                                  .watch(matchDatingNotifier
                                                      .notifier)
                                                  .updateMatchPercentage(value);
                                            }))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                        '${(ref.watch(matchDatingNotifier).matchDatingModelObj!.initMatchPercentage! * 100).round()}%',
                                        style: theme.textTheme.labelLarge))
                              ]))))
                ])))
      ]));
}
