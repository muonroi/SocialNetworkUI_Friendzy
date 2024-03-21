import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/dating/dating_profile_detail_bottom_sheet/models/dating_category_item_model.dart';
import 'package:muonroi_friends/presentation/dating/dating_profile_detail_bottom_sheet/notifier/dating_profile_detail_notifier.dart';
import 'package:muonroi_friends/presentation/dating/dating_profile_detail_bottom_sheet/widgets/category_item_widget.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
part 'widgets/build_friend_info_widget.dart';
part 'widgets/build_gender_age_friend_widget.dart';
part 'widgets/build_action_button_widget.dart';

class DatingProfileDetailsBottomSheet extends ConsumerStatefulWidget {
  const DatingProfileDetailsBottomSheet({Key? key})
      : super(
          key: key,
        );
  @override
  DatingProfileDetailsVoneBottomSheetState createState() =>
      DatingProfileDetailsVoneBottomSheetState();
}

class DatingProfileDetailsVoneBottomSheetState
    extends ConsumerState<DatingProfileDetailsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var datingProfileDetailRef = ref.watch(datingProfileDetailsVoneNotifier);
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 5.v,
              width: 48.h,
              decoration: BoxDecoration(
                color: appTheme.indigo50,
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
              ),
            ),
          ),
          SizedBox(height: 25.v),
          Opacity(
            opacity: 0.5,
            child: Text(
              LocalizationKeys.lblAbout.name.tr,
              style: CustomTextStyles.bodyLargeOnPrimaryContainer_2,
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            width: 307.h,
            margin: EdgeInsets.only(right: 35.h),
            child: Text(
              '${datingProfileDetailRef.datingProfileDetailsVoneModelObj!.about}',
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeOnPrimaryContainer_1.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 23.v),
          Opacity(
            opacity: 0.5,
            child: Text(
              LocalizationKeys.lblInterest.name.tr,
              style: CustomTextStyles.bodyLargeOnPrimaryContainer_2,
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            height: 350.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Consumer(
                        builder: (context, ref, _) {
                          return Wrap(
                            runSpacing: 12.v,
                            spacing: 12.h,
                            children: List<Widget>.generate(
                              ref
                                      .watch(datingProfileDetailsVoneNotifier)
                                      .datingProfileDetailsVoneModelObj
                                      ?.categoryItemList
                                      .length ??
                                  0,
                              (index) {
                                ProfileCategoryItemModel model = ref
                                        .watch(datingProfileDetailsVoneNotifier)
                                        .datingProfileDetailsVoneModelObj
                                        ?.categoryItemList[index] ??
                                    ProfileCategoryItemModel();
                                return ProfileCategoryItemWidget(
                                  model,
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 80.v,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                      _buildInfoGenderAgeFriend(
                          context, datingProfileDetailRef),
                      _buildFriendInfo(context, datingProfileDetailRef),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
