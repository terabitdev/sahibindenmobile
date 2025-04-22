import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get raleway {
    return copyWith(
    fontFamily: 'Raleway',
    );
  }

  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get lexendDeca {
    return copyWith(
      fontFamily: 'Lexend Deca',
    );
  }

  TextStyle get poppins {
    return copyWith(
        fontFamily: 'Poppins',
    );
  }
  }

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
 //Body text style
static TextStyle get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
  fontSize: 13.fSize,
);
static TextStyle get bodyMediumBluegray400 =>
    theme.textTheme.bodyMedium!.copyWith(
      color: appTheme.blueGray400,
    );
static TextStyle get bodyMediumBluegray400_1 =>
    theme.textTheme.bodyMedium!.copyWith(
      color: appTheme.blueGray400,
    );
static TextStyle get bodyMediumLexendDecaOnPrimary =>
    theme.textTheme.bodyMedium!.lexendDeca.copyWith(
      color: theme.colorScheme.onPrimary.withValues(
        alpha: 1,
      ),
    );
static TextStyle get bodyMediumOnPrimary =>
    theme.textTheme.bodyMedium!.copyWith(
      color: theme.colorScheme.onPrimary.withValues(
        alpha: 1,
      ),
    );
static TextStyle get bodyMediumPrimary =>
    theme.textTheme.bodyMedium!.copyWith(
      color: theme.colorScheme.primary,
    );
static get bodyMedium_1 => theme.textTheme.bodyMedium!;

static TextStyle get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
  fontSize: 12.fSize,
);
static TextStyle get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
  color: appTheme.black900,
  fontSize: 12.fSize,
);

static TextStyle get bodySmallBlack90012 =>
    theme.textTheme.bodySmall!.copyWith(
      color: appTheme.black900,
      fontSize: 12.fSize,
    );

