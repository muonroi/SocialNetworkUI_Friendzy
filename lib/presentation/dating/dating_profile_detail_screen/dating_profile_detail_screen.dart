import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/dating/dating_profile_detail_bottom_sheet/dating_profile_detail_bottom_sheet.dart';
import 'package:muonroi_friends/presentation/dating/dating_profile_detail_screen/notifier/dating_profile_detail_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DatingProfileDetailScreen extends ConsumerStatefulWidget {
  const DatingProfileDetailScreen({super.key});

  @override
  DatingProfileDetailScreenState createState() =>
      DatingProfileDetailScreenState();
}

class DatingProfileDetailScreenState
    extends ConsumerState<DatingProfileDetailScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showSheetWithoutList();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    detailFriendRef = ref.watch(datingProfileDetailsNotifier);
  }

  void _showSheetWithoutList() {
    showStickyFlexibleBottomSheet<void>(
      isModal: false,
      minHeight: 0.5,
      initHeight: 0.5,
      maxHeight: .70,
      headerHeight: 0,
      context: context,
      bottomSheetBorderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
      headerBuilder: (context, offset) {
        return Container();
      },
      bodyBuilder: (context, offset) {
        return SliverChildListDelegate(
            [const DatingProfileDetailsBottomSheet()]);
      },
    );
  }

  late DatingProfileDetailsState detailFriendRef;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                color: Colors.white,
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  onTapArrowLeft(context);
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
                color: Colors.white,
                onPressed: () => _showSheetWithoutList(),
                icon: const Icon(Icons.more_horiz_rounded))
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(0, 238, 235, 235),
                theme.colorScheme.primary.withOpacity(0.7),
              ],
            ),
          ),
          child: Stack(children: [
            ImageSlideshow(
                isLoop: true,
                height: 300.h,
                autoPlayInterval: 3000,
                initialPage: 0,
                children: List.generate(
                    detailFriendRef
                        .datingProfileDetailsModelObj!.friendOfImages!.length,
                    (index) => Image.asset(
                          detailFriendRef.datingProfileDetailsModelObj!
                              .friendOfImages![index],
                          fit: BoxFit.cover,
                        ))),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    '${detailFriendRef.datingProfileDetailsModelObj!.friendOfName}, ${detailFriendRef.datingProfileDetailsModelObj!.age}',
                    style: CustomTextStyles.headlineSmallffffffff),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    '${detailFriendRef.datingProfileDetailsModelObj!.friendOfAddress}',
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: const EdgeInsets.all(0),
                      color: theme.colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder30,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            border: Border.all(
                                color: appTheme.purple200, width: 2)),
                        width: 112.h,
                        child: Row(
                          children: [
                            Container(
                                height: 46.adaptSize,
                                width: 46.adaptSize,
                                padding: EdgeInsets.all(4.h),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30,
                                ),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 40.adaptSize,
                                              width: 40.adaptSize,
                                              child: CircularPercentIndicator(
                                                  animationDuration: 3500,
                                                  animation: true,
                                                  percent: 0.8,
                                                  backgroundColor: appTheme
                                                      .purple200
                                                      .withOpacity(0.46),
                                                  progressColor:
                                                      appTheme.purple200,
                                                  circularStrokeCap:
                                                      CircularStrokeCap.round,
                                                  radius: 20.0,
                                                  onPercentValue: (value) {}))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                              '${detailFriendRef.datingProfileDetailsModelObj!.matchPercent}',
                                              style:
                                                  theme.textTheme.labelLarge)),
                                    ])),
                            Container(
                              padding: const EdgeInsets.all(2),
                              child: Text(
                                LocalizationKeys.lblMatch.name.tr,
                                style: CustomTextStyles.titleMediumWhite200Bold,
                              ),
                            )
                          ],
                        ),
                      )),
                ),
                Container(
                  height: 200.h,
                )
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Transform.flip(
                flipY: true,
                child: Opacity(
                  opacity: 0.1,
                  child: ImageSlideshow(
                      isLoop: true,
                      height: 300.h,
                      autoPlayInterval: 3000,
                      initialPage: 0,
                      children: List.generate(
                          detailFriendRef.datingProfileDetailsModelObj!
                              .friendOfImages!.length,
                          (index) => Image.asset(
                                detailFriendRef.datingProfileDetailsModelObj!
                                    .friendOfImages![index],
                                fit: BoxFit.cover,
                              ))),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
