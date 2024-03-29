import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/utils/pref_utils.dart';
import 'package:muonroi_friends/core/utils/size_utils.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  final _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  final Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray50,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.onErrorContainer.withOpacity(0.2),
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: const BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.purple200,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onPrimaryContainer.withOpacity(0.38),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(0.6),
          fontSize: 11.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 40.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w800,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 32.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 28.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 11.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: const Color(0XFF4B164C),
          fontSize: 20.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 18.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onErrorContainer.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Hellix',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF4B164C),
    primaryContainer: Color(0XFFFC6C6B),
    secondaryContainer: Color(0X664B164C),

    // Error colors
    errorContainer: Color(0X0A752277),
    onError: Color(0X004B154C),
    onErrorContainer: Color(0X75FFFFFF),

    // On colors(text colors)
    onPrimary: Color(0X4CEDC1E6),
    onPrimaryContainer: Color(0X8722172A),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => const Color(0XFFFFC107);
  Color get amber600 => const Color(0XFFFFB400);

  // BlueGray
  Color get blueGray300 => const Color(0XFF9EA3AE);

  // Gray
  Color get gray100 => const Color(0XFFF4F4F6);
  Color get gray400 => const Color(0XFFC4C4C4);
  Color get gray50 => const Color(0XFFFDF7FD);
  Color get gray5001 => const Color(0XFFF7FCFF);
  Color get gray5002 => const Color(0XFFF7FBFF);
  Color get gray5003 => const Color(0XFFF9FAFB);
  Color get gray600 => const Color(0XFF6C727F);
  Color get gray900 => const Color(0XFF272727);

  // Indigo
  Color get indigo50 => const Color(0XFFE5E6EB);
  Color get indigoA400 => const Color(0XFF3C57DB);

  // PinkC
  Color get pink50C6 => const Color(0XC6F6D1EB);

  // Purple
  Color get purple200 => const Color(0XFFDD88CF);
  Color get purple20033 => const Color(0X33DC88CF);
  Color get purple50 => const Color(0XFFF5DFF2);
  Color get purple5001 => const Color(0XFFF4D8EF);
  Color get purple5002 => const Color(0XFFF8E7F6);
  Color get purple80026 => const Color(0X26752276);

  // Red
  Color get redA700 => const Color(0XFFEF0000);

  // Teal
  Color get tealA400 => const Color(0XFF12E398);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
