import 'package:flutter/material.dart';
import 'package:flutter_touch_ripple/widgets/widget.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/main.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/models/chat_box_model.dart';

// ignore: must_be_immutable
class ChatBoxWidget extends StatelessWidget {
  ChatBoxWidget(
    this.viewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );
  ChatBoxViewModel viewItemModelObj;
  @override
  Widget build(BuildContext context) {
    return TouchRipple(
      onTap: () => onTapScreenTitle(AppRoutes.textMessageScreen),
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 56.adaptSize,
              width: 56.adaptSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(viewItemModelObj.imageFriend ??
                        ImageConstant.imageNotFound)),
                color: appTheme.gray400,
                borderRadius: BorderRadius.circular(
                  28.h,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  viewItemModelObj.friendName!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 6.v),
                Text(
                  viewItemModelObj.previewMessage!,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.v),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.purple200,
                        borderRadius: BorderRadius.circular(
                          6.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    viewItemModelObj.lastTimeMessage!,
                    style: CustomTextStyles.bodyMediumBluegray300_1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
