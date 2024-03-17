import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/discover/discover_filter_bottom_sheet/notifier/discover_filter_notifier.dart';
import 'package:muonroi_friends/widget/custom_checkbox_button.dart';
import 'package:muonroi_friends/widget/custom_elevated_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:muonroi_friends/widget/custom_switch.dart';
import 'package:muonroi_friends/widget/custom_text_form_field.dart';
part 'widgets/build_age_widget.dart';
part 'widgets/build_apply_button_widget.dart';
part 'widgets/build_button_widget.dart';
part 'widgets/build_dating_widget.dart';
part 'widgets/build_distance_widget.dart';
part 'widgets/build_location_widget.dart';
part 'widgets/build_make_friend_widget.dart';
part 'widgets/build_online_switch_widget.dart';
part 'widgets/build_reset_button_widget.dart';
part 'widgets/custom_age_range_slider_widget.dart';
part 'widgets/custom_distance_slider_widget.dart';

class DiscoverFilterBottomSheet extends ConsumerStatefulWidget {
  const DiscoverFilterBottomSheet({Key? key})
      : super(
          key: key,
        );
  @override
  DiscoverFilterBottomSheetState createState() =>
      DiscoverFilterBottomSheetState();
}

class DiscoverFilterBottomSheetState
    extends ConsumerState<DiscoverFilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 56.h,
              child: Divider(
                color: appTheme.indigo50,
              ),
            ),
            SizedBox(height: 15.v),
            Text(
              LocalizationKeys.lblFilters.name.tr,
              style: CustomTextStyles.headlineSmallOnPrimaryContainer,
            ),
            SizedBox(height: 19.v),
            _buildLocation(context),
            SizedBox(height: 20.v),
            const Opacity(
              opacity: 0.08,
              child: Divider(),
            ),
            SizedBox(height: 19.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                LocalizationKeys.lblPreferences.name.tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 17.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 94.h),
                child: Row(
                  children: [
                    _buildMakeFriends(context),
                    _buildDating(context),
                  ],
                ),
              ),
            ),
            SizedBox(height: 21.v),
            const Opacity(
              opacity: 0.08,
              child: Divider(),
            ),
            SizedBox(height: 19.v),
            _buildDistanceTitle(context),
            CustomDistanceSlider(ref: ref),
            SizedBox(height: 20.v),
            const Opacity(
              opacity: 0.08,
              child: Divider(),
            ),
            SizedBox(height: 20.v),
            _buildTitleAge(context),
            CustomAgeRangeSlider(ref: ref),
            SizedBox(height: 20.v),
            const Opacity(
              opacity: 0.08,
              child: Divider(),
            ),
            SizedBox(height: 19.v),
            _buildOnlineNow(context),
            SizedBox(height: 20.v),
            const Opacity(
              opacity: 0.08,
              child: Divider(),
            ),
            SizedBox(height: 23.v),
            _buildButtons(context),
            SizedBox(height: 23.v),
          ],
        ),
      ),
    );
  }
}
