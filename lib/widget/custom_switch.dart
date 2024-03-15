import 'package:flutter/cupertino.dart';
import 'package:muonroi_friends/theme/theme_helper.dart';

// ignore: must_be_immutable
class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  bool? value;

  final Function(bool) onChange;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => CupertinoSwitch(
        value: value ?? false,
        trackColor: appTheme.gray100,
        thumbColor: (value ?? false)
            ? theme.colorScheme.onErrorContainer.withOpacity(1)
            : appTheme.gray100.withOpacity(1),
        activeColor: appTheme.purple200,
        onChanged: (value) {
          onChange(value);
        },
      );
}
