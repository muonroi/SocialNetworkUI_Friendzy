import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/models/chat_box_model.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/models/story_friends_model.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/notifier/message_notifier.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/widgets/message_box_widget.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
part './widgets/build_list_chat_widget.dart';
part './widgets/build_story_friends_widget.dart';

class MainMessageScreen extends ConsumerStatefulWidget {
  const MainMessageScreen({Key? key}) : super(key: key);
  @override
  MainMessagesScreenState createState() => MainMessagesScreenState();
}

class MainMessagesScreenState extends ConsumerState<MainMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.primaryColor,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 8.v),
      child: Stack(children: [
        Align(
            alignment: Alignment.topCenter,
            child: CustomImageView(
              width: 250.h,
              margin: EdgeInsets.only(left: 23.v, top: 80.v),
              imagePath: ImageConstant.imgIconChatBackground,
            )),
        Column(
          children: [
            SizedBox(height: 25.v),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  LocalizationKeys.lblRecentMatches.name.tr,
                  style: CustomTextStyles.titleMediumOnErrorContainer16,
                ),
              ),
            ),
            SizedBox(height: 18.v),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                      ref
                          .watch(messagesNotifier)
                          .messagesModelObj!
                          .storiesViewModel
                          .length,
                      (index) => _buildStoryFriends(
                          ref,
                          ref
                              .watch(messagesNotifier)
                              .messagesModelObj!
                              .storiesViewModel[index])),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                decoration: AppDecoration.fillOnErrorContainer.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder30,
                ),
                child: SingleChildScrollView(
                  child: _buildListChat(context),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
