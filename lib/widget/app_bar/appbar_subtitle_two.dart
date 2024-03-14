import 'package:flutter/material.dart';
import 'package:muonroi_friends/theme/custom_text_style.dart';
import 'package:muonroi_friends/theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarSubtitleTwo extends StatelessWidget {
  AppbarSubtitleTwo({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );
  String text;
  EdgeInsetsGeometry? margin;
  Function? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.bodySmallOnPrimaryContainer.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
      ),
    );
  }
}
