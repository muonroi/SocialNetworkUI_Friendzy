import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray400 => BoxDecoration(
        color: appTheme.gray400,
      );
  static BoxDecoration get fillGray5003 => BoxDecoration(
        color: appTheme.gray5003,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnErrorContainer1 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.4),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.5),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple200,
      );
  static BoxDecoration get fillPurple200 => BoxDecoration(
        color: appTheme.purple200.withOpacity(0.5),
      );
  static BoxDecoration get fillPurple20033 => BoxDecoration(
        color: appTheme.purple20033,
      );
  static BoxDecoration get fillPurple2001 => BoxDecoration(
        color: appTheme.purple200.withOpacity(0.7),
      );
  static BoxDecoration get fillPurple50 => BoxDecoration(
        color: appTheme.purple50,
      );

  // Gradient decorations
  static BoxDecoration get gradientOnErrorToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 0.96),
          colors: [
            theme.colorScheme.onError,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToPrimary1 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0.47),
          end: const Alignment(0.5, 0.85),
          colors: [
            theme.colorScheme.onError,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToPrimary2 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0.34),
          end: const Alignment(0.5, 0.94),
          colors: [
            theme.colorScheme.onError,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToPrimary3 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0.45),
          end: const Alignment(0.5, 0.93),
          colors: [
            theme.colorScheme.onError,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToPrimary4 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0.5),
          end: const Alignment(0.5, 0.86),
          colors: [
            theme.colorScheme.onError,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToPrimary5 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0.23),
          end: const Alignment(0.5, 0.45),
          colors: [
            theme.colorScheme.onError,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToPrimary6 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0.56),
          end: const Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onError,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0.3),
          end: const Alignment(0.5, 0.82),
          colors: [
            theme.colorScheme.primary.withOpacity(0),
            theme.colorScheme.primary.withOpacity(0.7),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToPrimary1 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.53, 0.56),
          end: const Alignment(0.07, 0.56),
          colors: [
            theme.colorScheme.primary.withOpacity(0),
            theme.colorScheme.primary.withOpacity(0.7),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToPrimary2 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.3, -0.04),
          end: const Alignment(0.3, 0.2),
          colors: [
            theme.colorScheme.primary.withOpacity(0.7),
            theme.colorScheme.primary.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.purple200,
        border: Border.all(
          color: appTheme.gray50,
          width: 2.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        border: Border.all(
          color: appTheme.indigo50,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.2),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(0.3),
          width: 5.h,
        ),
      );
  static BoxDecoration get outlineOnErrorContainer1 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.2),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(0.2),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnErrorContainer2 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.12),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.2),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePurple => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.purple200,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.errorContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePurple200 => BoxDecoration(
        border: Border.all(
          color: appTheme.purple200,
          width: 2.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlinePurple2001 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.purple200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePurple2002 => BoxDecoration(
        border: Border.all(
          color: appTheme.purple200,
          width: 4.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlinePurple2003 => BoxDecoration(
        color: appTheme.purple200,
        border: Border.all(
          color: appTheme.purple200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePurple80026 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.purple80026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              8,
              0,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder36 => BorderRadius.circular(
        36.h,
      );
  static BorderRadius get circleBorder46 => BorderRadius.circular(
        46.h,
      );
  static BorderRadius get circleBorder62 => BorderRadius.circular(
        62.h,
      );
  static BorderRadius get circleBorder70 => BorderRadius.circular(
        70.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL100 => BorderRadius.only(
        topLeft: Radius.circular(100.h),
        topRight: Radius.circular(100.h),
        bottomLeft: Radius.circular(100.h),
      );
  static BorderRadius get customBorderTL1001 => BorderRadius.only(
        topLeft: Radius.circular(100.h),
        topRight: Radius.circular(100.h),
        bottomRight: Radius.circular(100.h),
      );
  static BorderRadius get customBorderTL24 => BorderRadius.only(
        topLeft: Radius.circular(24.h),
        topRight: Radius.circular(12.h),
        bottomLeft: Radius.circular(24.h),
        bottomRight: Radius.circular(12.h),
      );
  static BorderRadius get customBorderTL241 => BorderRadius.only(
        topLeft: Radius.circular(24.h),
        topRight: Radius.circular(24.h),
        bottomRight: Radius.circular(24.h),
      );
  static BorderRadius get customBorderTL242 => BorderRadius.only(
        topLeft: Radius.circular(24.h),
        topRight: Radius.circular(24.h),
        bottomLeft: Radius.circular(24.h),
      );
  static BorderRadius get customBorderTL32 => BorderRadius.vertical(
        top: Radius.circular(32.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
