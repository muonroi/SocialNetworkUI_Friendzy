import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/discover/discover_filter_bottom_sheet/discover_filter_bottom_sheet.dart';
import 'package:muonroi_friends/presentation/discover/discover_search_screen/notifier/discover_search_notifier.dart';
import 'package:muonroi_friends/widget/custom_icon_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:muonroi_friends/widget/custom_search_view.dart';
part 'widgets/build_search_widget.dart';

class DiscoverScrollSearchClickedPage extends ConsumerStatefulWidget {
  const DiscoverScrollSearchClickedPage({Key? key})
      : super(
          key: key,
        );
  @override
  DiscoverScrollSearchClickedPageState createState() =>
      DiscoverScrollSearchClickedPageState();
}

class DiscoverScrollSearchClickedPageState
    extends ConsumerState<DiscoverScrollSearchClickedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              _buildSearchBar(context),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    LocalizationKeys.lblAroundMe.name.tr,
                    style: CustomTextStyles.titleLargeOnPrimaryContainer,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: LocalizationKeys.lblPeopleWith.name.tr,
                          style: CustomTextStyles.bodyMediumff6c727f,
                        ),
                        TextSpan(
                          text: LocalizationKeys.lbl.name.tr,
                          style: CustomTextStyles.bodyMediumffdd88cf,
                        ),
                        TextSpan(
                          text: LocalizationKeys.lblMusic.name.tr,
                          style: CustomTextStyles.bodyMediumffdd88cf,
                        ),
                        TextSpan(
                          text: LocalizationKeys.lbl2.name.tr,
                          style: CustomTextStyles.bodyMediumffdd88cf,
                        ),
                        TextSpan(
                          text: LocalizationKeys.msgInterestAround.name.tr,
                          style: CustomTextStyles.bodyMediumff6c727f,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
            ],
          ),
        ),
      ),
    );
  }
}
