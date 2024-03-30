import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:script_kiddy_s_application3/core/utils/pref_utils.dart';
import 'package:script_kiddy_s_application3/core/utils/size_utils.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generatorif (!_supportedCustomColor.containsKey(_appTheme)){  throw Exception(               "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");      } //return theme from map
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator if (!_supportedColorScheme.containsKey(_appTheme)){   throw Exception(                "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");       }  //return theme from map
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
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
          color: appTheme.gray600,
          fontSize: 16.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 14.fSize,
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w300,
        ),
        bodySmall: TextStyle(
          color: appTheme.red600,
          fontSize: 12.fSize,
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 32.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 24.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray200,
          fontSize: 12.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 8.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 20.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 16.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onSecondaryContainer,
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF12A3DA),
    primaryContainer: Color(0XFF263238),
    secondaryContainer: Color(0XFFC695DD),

    // Error colors
    errorContainer: Color(0XFFB33022),
    onError: Color(0XFF3085FE),
    onErrorContainer: Color(0XFF08090A),

    // On colors(text colors)
    onPrimary: Color(0XFF101317),
    onPrimaryContainer: Color(0XFFFFFFFF),
    onSecondaryContainer: Color(0XFF061C3D),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue600 => Color(0XFF3498DB);

  // BlueGray
  Color get blueGray100 => Color(0XFFCFCFCF);
  Color get blueGray200 => Color(0XFFB4BBC5);
  Color get blueGray20001 => Color(0XFFACAFB5);
  Color get blueGray600 => Color(0XFF636E72);
  Color get blueGray900 => Color(0XFF313638);

  // DeepPurple
  Color get deepPurple50 => Color(0XFFEADAF4);

  // Gray
  Color get gray200 => Color(0XFFF0F0F0);
  Color get gray300 => Color(0XFFDFE6E9);
  Color get gray600 => Color(0XFF707070);
  Color get gray900 => Color(0XFF111111);
  Color get gray90001 => Color(0XFF111314);
  Color get gray90002 => Color(0XFF09111E);

  // Lime
  Color get lime600 => Color(0XFFA3D139);

  // Purple
  Color get purple400 => Color(0XFF9B59B6);

  // Red
  Color get red500 => Color(0XFFE74C3C);
  Color get red600 => Color(0XFFE54444);

  // RedAe
  Color get redA1009e => Color(0X9EFF7F74);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
