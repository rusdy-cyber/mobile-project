import 'package:flutter/material.dart';
import 'package:script_kiddy_s_application3/core/utils/size_utils.dart';
import 'package:script_kiddy_s_application3/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeLexendBlack900 =>
      theme.textTheme.bodyLarge!.lexend.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray200,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumManropeBluegray20001 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: appTheme.blueGray20001,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumManropeGray600 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumManropePrimary =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumManropePurple400 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: appTheme.purple400,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumManropeff101317 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: Color(0XFF101317),
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumManropeff9b59b6 =>
      theme.textTheme.bodyMedium!.manrope.copyWith(
        color: Color(0XFF9B59B6),
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineLargeff101317 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF101317),
      );
  static get headlineLargeff12a3da => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF12A3DA),
      );
  static get headlineSmallGray900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray900,
      );
  // Title text style
  static get titleLargeBluegray600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray600,
      );
  static get titleLargeLexendErrorContainer =>
      theme.textTheme.titleLarge!.lexend.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeLexendLime600 =>
      theme.textTheme.titleLarge!.lexend.copyWith(
        color: appTheme.lime600,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeLexendOnError =>
      theme.textTheme.titleLarge!.lexend.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeLexendOnPrimary =>
      theme.textTheme.titleLarge!.lexend.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeLexendPurple400 =>
      theme.textTheme.titleLarge!.lexend.copyWith(
        color: appTheme.purple400,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumPurple400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.purple400,
      );
}

extension on TextStyle {
  TextStyle get lexend {
    return copyWith(
      fontFamily: 'Lexend',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }
}
