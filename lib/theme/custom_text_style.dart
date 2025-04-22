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

static TextStyle get bodySmallRalewayIndigo20001 =>
    theme.textTheme.bodySmall!.raleway.copyWith(
      color: appTheme.indigo20001,
      fontSize: 12.fSize,
    );
// Headline text style
static TextStyle get headlineSmallLatoBluegray800 =>
    theme.textTheme.headlineSmall!.lato.copyWith(
      color: appTheme.blueGray800,
      fontWeight: FontWeight.w800,
    );
static TextStyle get headlineSmallLatoBluegray80003 =>
    theme.textTheme.headlineSmall!.lato.copyWith(
      color: appTheme.blueGray80003,
      fontWeight: FontWeight.w800,
    );
static TextStyle get headlineSmallLatoBluegray80003_1 =>
    theme.textTheme.headlineSmall!.lato.copyWith(
      color: appTheme.blueGray80003,
    );
static TextStyle get headlineSmallLatoBluegray800Bold =>
    theme.textTheme.headlineSmall!.lato.copyWith(
      color: appTheme.blueGray800,
      fontWeight: FontWeight.w700,
    );

  static TextStyle get headlineSmallLatoBluegray800_1 =>
      theme.textTheme.headlineSmall!.lato.copyWith(
        color: appTheme.blueGray800,
      );


  static TextStyle get headlineSmallLatoPrimary =>
      theme.textTheme.headlineSmall!.lato.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get headlineSmallMontserrat =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        fontWeight: FontWeight.w600,
      );
  static TextStyle get headlineSmallRalewayBluegray800 =>
      theme.textTheme.headlineSmall!.raleway.copyWith(
        color: appTheme.blueGray800,
      );
  // Label text style
static TextStyle get labelLargeBlack900 =>
    theme.textTheme.labelLarge!.copyWith(
      color: appTheme.black900,
    );
static TextStyle get labelLargeBlack90013 =>
    theme.textTheme.labelLarge!.copyWith(
      color: appTheme.black900,
      fontSize: 13.fSize,
    );

  static TextStyle get labelLargeBlack900SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelLargeBlack900_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );

  static TextStyle get labelLargeBlack900_2 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );

  static TextStyle get labelLargeBluegray400 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );

  static TextStyle get labelLargeBluegray40001 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray40001,
      );

  static TextStyle get labelLargeBluegray800 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w700,
  );

  static TextStyle get labelLargeGray60001 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.gray60001,
  );

  static TextStyle get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.gray900,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get labelLargeIndigo50 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.indigo50,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get labelLargeLatoBlack900 => theme.textTheme.labelLarge!.lato.copyWith(
    color: appTheme.black900,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get labelLargeLatoDeeppurpleA200 => theme.textTheme.labelLarge!.lato.copyWith(
    color: appTheme.deepPurpleA200,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get labelLargeLatoPrimary => theme.textTheme.labelLarge!.lato.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get labelLargeLatoPrimarySemiBold => theme.textTheme.labelLarge!.lato.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get labelLargeMontserratGray100 => theme.textTheme.labelLarge!.montserrat.copyWith(
    color: appTheme.gray100,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get labelLargeOnError => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.onError,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.onPrimary.withValues(
      alpha: 1,
    ),
  );

  static TextStyle get labelLargeOnPrimaryContainer => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.onPrimaryContainer,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get labelLargeOnPrimarySemiBold => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.onPrimary.withValues(
      alpha: 1,
    ),
    fontWeight: FontWeight.w600,
  );

  static TextStyle get labelLargeOnPrimarySemiBold_1 => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.onPrimary.withValues(
      alpha: 1,
    ),
    fontWeight: FontWeight.w600,
  );

  static TextStyle get labelLargeOnPrimary_1 => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.onPrimary.withValues(
      alpha: 1,
    ),
  );

  static TextStyle get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.primary,
  );

  static TextStyle get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.primary,
  );

  static TextStyle get labelLargeRalewayBluegray60001 => theme.textTheme.labelLarge!.raleway.copyWith(
    color: appTheme.blueGray60001,
  );

  static TextStyle get labelLargeRalewayBluegray800 => theme.textTheme.labelLarge!.raleway.copyWith(
    color: appTheme.blueGray800,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get labelLargeRalewayBluegray80006 => theme.textTheme.labelLarge!.raleway.copyWith(
    color: appTheme.blueGray80006,
  );

  static TextStyle get labelLargeRalewayPrimary => theme.textTheme.labelLarge!.raleway.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get labelLargeTeal900 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.teal900,
    fontSize: 13.fSize,
    fontWeight: FontWeight.w600,
  );

  static get labelLarge_1 => theme.textTheme.labelLarge!;

  static TextStyle get labelMediumBluegray300 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.blueGray300,
    fontSize: 11.fSize,
  );

  static TextStyle get labelMediumBluegray60001 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.blueGray60001,
  );

  static TextStyle get labelMediumBluegray60001Bold => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.blueGray60001,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get labelMediumBluegray800 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.blueGray800,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get labelMediumBluegray800_1 => theme.textTheme.labelMedium!.copyWith(
    color: appTheme.blueGray800,
  );

  static TextStyle get labelMediumRalewayBluegray60001 => theme.textTheme.labelMedium!.raleway.copyWith(
    color: appTheme.blueGray60001,
  );


  static TextStyle get labelMediumRalewayBluegray800 =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: appTheme.blueGray800,
      );

  static TextStyle get labelMediumRalewayBluegray800SemiBold =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelMediumRalewayGray100 =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get labelMediumRalewayIndigo20001 =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: appTheme.indigo20001,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelMediumRalewayIndigo20001SemiBold =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: appTheme.indigo20001,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelMediumRalewayOnPrimary =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: theme.colorScheme.onPrimary.withValues(
          alpha: 1,
        ),
        fontWeight: FontWeight.w700,
      );


  static TextStyle get labelMediumRalewayOnPrimary_1 =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: theme.colorScheme.onPrimary.withValues(
          alpha: 1,
        ),
      );

  static TextStyle get labelMediumRalewayPrimary =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelSmallBluegray800 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get labelSmallBluegray80005 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray80005,
      );

  static TextStyle get labelSmallPoppinsOnPrimary =>
      theme.textTheme.labelSmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withValues(
          alpha: 1,
        ),
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelSmallPoppinsPrimary =>
      theme.textTheme.labelSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelSmallRalewayGray100 =>
      theme.textTheme.labelSmall!.raleway.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get labelSmallRalewayOnPrimary =>
      theme.textTheme.labelSmall!.raleway.copyWith(
        color: theme.colorScheme.onPrimary.withValues(
          alpha: 1,
        ),
        fontWeight: FontWeight.w500,
      );

// Montserrat text style
  static TextStyle get montserratGray100 => TextStyle(
    color: appTheme.gray100,
    fontSize: 6.fSize,
    fontWeight: FontWeight.w500,
  ).montserrat;

  // Poppins text style
  static TextStyle get poppinsGray40001 => TextStyle(
    color: appTheme.gray40001,
    fontSize: 7.fSize,
    fontWeight: FontWeight.w400,
  ).poppins;

// Title text styles
  static TextStyle get titleLargeMontserratBluegray800 =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumLatoBluegray800 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumLatoOnPrimary =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: theme.colorScheme.onPrimary.withValues(
          alpha: 1,
        ),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumLatoPrimary =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumMontserratBluegray50 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.blueGray50,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumMontserratBluegray800 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.blueGray800,
        fontSize: 16.fSize,
      );

  static TextStyle get titleMediumRalewayBluegray800 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumTeal900 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal900,
      );

  static TextStyle get titleSmallBluegray400 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallBold =>
      theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallGray90001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallGray9000114 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001.withValues(
          alpha: 0.7,
        ),
        fontSize: 14.fSize,
      );

  static TextStyle get titleSmallIndigo50 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo50,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallLatoOnPrimary =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: theme.colorScheme.onPrimary.withValues(
          alpha: 1,
        ),
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallMontserratOnPrimary =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: theme.colorScheme.onPrimary.withValues(
          alpha: 1,
        ),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallOnPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withValues(
          alpha: 1,
        ),
      );

  static TextStyle get titleSmallOnPrimary_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withValues(
          alpha: 1,
        ),
      );

  static TextStyle get titleSmallPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );

  static TextStyle get titleSmallPrimarySemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallPrimary_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );

  static TextStyle get titleSmallSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallSemiBold_1 =>
      theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );

  static get titleSmall_1 => theme.textTheme.titleSmall!;
