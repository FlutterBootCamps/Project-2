import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Display text style
  static get displayMediumRibeyeMarrowBlack900 =>
      theme.textTheme.displayMedium!.ribeyeMarrow.copyWith(
        color: appTheme.black900,
      );
  static get displayMediumff6884f6 => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFF6884F6),
      );
  static get displayMediumffab70df => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFFAB70DF),
      );
  static get displayMediumffeb9f4a => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFFEB9F4A),
      );
  static get displayMediumffecc055 => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFFECC055),
      );
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.9),
      );
  static get headlineSmallLightblue500 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.lightBlue500,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOrange300 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.orange300,
      );
  static get headlineSmallTeal400 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.teal400,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
      );
  static get titleLargeLightblue500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightBlue500,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeff000000 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF000000),
      );
  static get titleLargeff000000Medium => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
      );
  static get titleMediumff000000 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF000000),
      );
  static get titleMediumff77b29f => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF77B29F),
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get ribeyeMarrow {
    return copyWith(
      fontFamily: 'Ribeye Marrow',
    );
  }

  TextStyle get ribeye {
    return copyWith(
      fontFamily: 'Ribeye',
    );
  }
}
