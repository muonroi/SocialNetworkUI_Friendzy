import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/utils/size_utils.dart';
import 'package:muonroi_friends/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyLargeOnErrorContainer_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.6),
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
      );
  static get bodyLargeOnPrimaryContainer_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargeOnPrimaryContainer_2 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
      );
  static get bodyLargePrimary_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.7),
      );
  static get bodyLargePrimary_2 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
      );
  static get bodyLargePurple200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.purple200,
      );
  static get bodyLargeb24b164c => theme.textTheme.bodyLarge!.copyWith(
        color: const Color(0XB24B164C),
      );
  static get bodyLargeffdd88cf => theme.textTheme.bodyLarge!.copyWith(
        color: const Color(0XFFDD88CF),
      );
  static get bodyLargeffffffff => theme.textTheme.bodyLarge!.copyWith(
        color: const Color(0XFFFFFFFF),
      );
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumBluegray300_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.53),
      );
  static get bodyMediumOnErrorContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.6),
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPoppinsff22172a =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: const Color(0XFF22172A),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPurple200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.purple200,
      );
  static get bodyMediumb222172a => theme.textTheme.bodyMedium!.copyWith(
        color: const Color(0XB222172A),
      );
  static get bodyMediumff22172a => theme.textTheme.bodyMedium!.copyWith(
        color: const Color(0XFF22172A),
      );
  static get bodyMediumff4b164c => theme.textTheme.bodyMedium!.copyWith(
        color: const Color(0XFF4B164C),
      );
  static get bodyMediumff6c727f => theme.textTheme.bodyMedium!.copyWith(
        color: const Color(0XFF6C727F),
      );
  static get bodyMediumffdd88cf => theme.textTheme.bodyMedium!.copyWith(
        color: const Color(0XFFDD88CF),
      );
  static get bodySmallBluegray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 12.fSize,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 12.fSize,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineMediumPrimary => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallff4b164c => theme.textTheme.headlineSmall!.copyWith(
        color: const Color(0XFF4B164C),
      );
  static get headlineSmallffdd88cf => theme.textTheme.headlineSmall!.copyWith(
        color: const Color(0XFFDD88CF),
      );
  static get headlineSmallffffffff => theme.textTheme.headlineSmall!.copyWith(
        color: const Color(0XFFFFFFFF),
      );
  // Label text style
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.46),
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePurple200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.purple200,
      );
  // Title text style
  static get titleLarge7fdd88cf => theme.textTheme.titleLarge!.copyWith(
        color: const Color(0X7FDD88CF),
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePurple200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.purple200,
      );
  static get titleLargeffdd88cf => theme.textTheme.titleLarge!.copyWith(
        color: const Color(0XFFDD88CF),
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 16.fSize,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnErrorContainer16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumOnErrorContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );

  static get titleMediumWhite => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo50,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );

  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPurple200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.purple200,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff22172a => theme.textTheme.titleMedium!.copyWith(
        color: const Color(0XFF22172A),
        fontSize: 16.fSize,
      );
  static get titleMediumff4b164c => theme.textTheme.titleMedium!.copyWith(
        color: const Color(0XFF4B164C),
        fontSize: 16.fSize,
      );
  static get titleMediumffdd88cf => theme.textTheme.titleMedium!.copyWith(
        color: const Color(0XFFDD88CF),
        fontSize: 16.fSize,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsOnPrimaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPurple200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.purple200,
      );
  static get titleSmallffdd88cf => theme.textTheme.titleSmall!.copyWith(
        color: const Color(0XFFDD88CF),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallffdd88cf_1 => theme.textTheme.titleSmall!.copyWith(
        color: const Color(0XFFDD88CF),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
