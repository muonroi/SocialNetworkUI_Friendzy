import 'package:flutter/widgets.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/dating/dating_matches_screen/models/dating_match_item_model.dart';
import 'package:muonroi_friends/widget/custom_elevated_button.dart';

// ignore: must_be_immutable
class MatchItemWidget extends StatelessWidget {
  MatchItemWidget(
    this.matchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  MatchItemModel matchItemModelObj;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 232.v,
        width: 163.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(4.h),
                decoration: AppDecoration.fillPurple.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                  image: DecorationImage(
                    image: AssetImage(
                      matchItemModelObj.image!,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  height: 224.v,
                  width: 155.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      22.h,
                    ),
                    gradient: LinearGradient(
                      begin: const Alignment(0.5, 0.5),
                      end: const Alignment(0.5, 0.86),
                      colors: [
                        theme.colorScheme.onError,
                        theme.colorScheme.primary,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            _buildMatch(context),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 15.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 85.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 2.v,
                      ),
                      decoration:
                          AppDecoration.outlineOnErrorContainer1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12,
                      ),
                      child: Text(
                        matchItemModelObj.distance!,
                        style: CustomTextStyles.bodySmallOnErrorContainer,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          matchItemModelObj.jamesCounter!,
                          style:
                              CustomTextStyles.titleMediumOnErrorContainerBold,
                        ),
                        Container(
                          height: 6.adaptSize,
                          width: 6.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            top: 7.v,
                            bottom: 8.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.tealA400,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.v),
                    Opacity(
                      opacity: 0.7,
                      child: Text(
                        matchItemModelObj.hanover!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMatch(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 98.h,
      text: LocalizationKeys.lbl100Match.name.tr,
      buttonStyle: CustomButtonStyles.fillPurpleBL16,
      buttonTextStyle: theme.textTheme.labelLarge!,
      alignment: Alignment.topCenter,
    );
  }
}
