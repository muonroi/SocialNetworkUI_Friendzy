import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/message/first_message_screen/notifier/first_message_notifier.dart';
import 'package:muonroi_friends/widget/custom_elevated_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:sprintf/sprintf.dart';

class FirstTimeChatScreen extends ConsumerStatefulWidget {
  const FirstTimeChatScreen({Key? key}) : super(key: key);
  @override
  FirstTimeChatScreenState createState() => FirstTimeChatScreenState();
}

class FirstTimeChatScreenState extends ConsumerState<FirstTimeChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: Stack(children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: CustomImageView(
                    width: 250.h,
                    margin: EdgeInsets.only(top: 85.h),
                    imagePath: ImageConstant.imgIconChatBackground,
                  )),
              Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  child: Column(children: [
                    SizedBox(height: 57.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Column(children: [
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: LocalizationKeys.lblYou2.name.tr,
                                style: CustomTextStyles.headlineSmallffffffff),
                            TextSpan(
                                text: LocalizationKeys.lblConnected.name.tr,
                                style: CustomTextStyles.headlineSmallffffffff),
                            TextSpan(
                                text: LocalizationKeys.lblWith.name.tr,
                                style: CustomTextStyles.headlineSmallffffffff),
                            const TextSpan(text: " "),
                            TextSpan(
                                text:
                                    '${ref.watch(firstTimeChatNotifier).firstTimeChatModelObj!.friendName}',
                                style: CustomTextStyles.headlineSmallffdd88cf)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 12.v),
                      Opacity(
                          opacity: 0.7,
                          child: Text(
                              sprintf(
                                  LocalizationKeys.lblTimeConnected.name.tr, [
                                ref
                                    .watch(firstTimeChatNotifier)
                                    .firstTimeChatModelObj!
                                    .timeConnected
                                    .toString(),
                                ref
                                    .watch(firstTimeChatNotifier)
                                    .firstTimeChatModelObj!
                                    .type
                                    .toString(),
                              ]),
                              style: CustomTextStyles
                                  .bodyLargeOnErrorContainer_1)),
                      SizedBox(height: 22.v),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 123.h),
                          padding: EdgeInsets.all(6.h),
                          decoration: AppDecoration.outlinePurple2002.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder62),
                          child: Container(
                              height: 108.adaptSize,
                              width: 108.adaptSize,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(ref
                                          .watch(firstTimeChatNotifier)
                                          .firstTimeChatModelObj!
                                          .friendImage
                                          .toString()),
                                      fit: BoxFit.cover),
                                  color: appTheme.gray400,
                                  borderRadius: BorderRadius.circular(54.h)))),
                      SizedBox(height: 41.v),
                      SizedBox(
                          width: 230.h,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: LocalizationKeys.lblKnowWhen.name.tr,
                                    style: CustomTextStyles.bodyLargeffffffff),
                                TextSpan(
                                    text: sprintf(
                                        LocalizationKeys
                                            .msgClaraHasReadYour.name.tr,
                                        [
                                          ref
                                              .watch(firstTimeChatNotifier)
                                              .firstTimeChatModelObj!
                                              .friendName
                                              .toString()
                                        ]),
                                    style: CustomTextStyles.titleMediumffdd88cf)
                              ]),
                              textAlign: TextAlign.center)),
                      SizedBox(height: 13.v),
                      CustomElevatedButton(
                          height: 28.v,
                          width: 156.h,
                          text: LocalizationKeys.msgGetReadReceipts.name.tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 4.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize)),
                          buttonStyle: CustomButtonStyles.fillPurpleTL14,
                          buttonTextStyle: theme.textTheme.titleSmall!),
                      SizedBox(height: 47.v),
                    ]))),
                    SizedBox(height: 16.v)
                  ])),
            ]),
            floatingActionButton: ClipRRect(
              borderRadius: BorderRadius.circular(40.h),
              child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: appTheme.purple200,
                  child: Icon(
                    Icons.mic_rounded,
                    color: appTheme.gray5003,
                  )),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
                height: 50.v,
                elevation: 0,
                shape: const CircularNotchedRectangle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CustomImageView(
                        fit: BoxFit.cover,
                        radius: BorderRadius.circular(40),
                        imagePath: ImageConstant.imgIconTouchItem,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        onTap: () {}),
                    const SizedBox(width: 40), // The dummy child
                    CustomImageView(
                        fit: BoxFit.cover,
                        radius: BorderRadius.circular(40),
                        imagePath: ImageConstant.imgIconKeyboard,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        onTap: () {}),
                  ],
                ))));
  }
}
