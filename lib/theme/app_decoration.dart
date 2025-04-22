import 'package:flutter/material.dart';
import '../core/app_export.dart';
class AppDecoration {
  // Cardshadow decorations
  static BoxDecoration get cardshadow => BoxDecoration(
    color: theme.colorScheme.onPrimary.withValues(
      alpha: 1,
    ),
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(
          alpha: 0.1,
        ),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          4,
        ),
      )
    ],
  );
  // Fill decorations
static BoxDecoration get fillOnPrimary => BoxDecoration(
  color: theme.colorScheme.onPrimary.withValues(
    alpha: 1,
  ),
);

static BoxDecoration get fillPrimary => BoxDecoration(
  color: theme.colorScheme.primary,
);
// Grey decorations
static BoxDecoration get greySoft1 => BoxDecoration(
  color: appTheme.gray100,
);// Inputshadow decorations
 static BoxDecoration get inputshadow => BoxDecoration(
   border: Border.all(
     color: theme.colorScheme.primary,
     width: 1.h,
   ),
   boxShadow: [
     BoxShadow(
       color: appTheme.black900.withValues(
         alpha: 0.1,
       ),
     ),
     BoxShadow(
       color: theme.colorScheme.onPrimary.withValues(
         alpha: 1,
       ),
       spreadRadius: 0,
       blurRadius: 5,
       offset: Offset(
         0,
         1,
       ),
     )
   ],
 );
// Outline decorations
static BoxDecoration get outline => BoxDecoration(
  color: theme.colorScheme.primary.withValues(
    alpha: 0.1,
  ),
);
static BoxDecoration get outlineBlack => BoxDecoration(
  color: appTheme.gray50,
  boxShadow: [
    BoxShadow(
      color: appTheme.black900.withValues(
        alpha: 0.1,
      ),
      spreadRadius: 2.h,
      blurRadius: 2.h,
      offset: Offset(
        0,
        4,
      ),
    )
  ],
);
  static BoxDecoration get outlineBlack900 => BoxDecoration(
    color: theme.colorScheme.onPrimary.withValues(
      alpha: 1,
    ),
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(
          alpha: 0.25,
        ),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          2,
          2,
        ),
      )
    ],
  );
  static BoxDecoration get outlineBlueA => BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: appTheme.blueA700,
        width: 2.h,
      ),
    ),
  );
  static BoxDecoration get outlineIndigo => BoxDecoration(
    color: theme.colorScheme.onPrimary.withValues(
      alpha: 1,
    ),
    boxShadow: [
      BoxShadow(
        color: appTheme.indigo90005,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          0,
        ),
      )
    ],
  );
  static BoxDecoration get outline1 => BoxDecoration(
    color: theme.colorScheme.primary.withValues(
      alpha: 0.15,
    ),
  );
  static BoxDecoration get outline2 => BoxDecoration(
    color: appTheme.blueGray80003.withValues(
      alpha: 0.69,
    ),
  );}
class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder28 => BorderRadius.circular(
    28.h,
  );// Custom borders
static BorderRadius get customBorderBL5 => BorderRadius.vertical(
  bottom: Radius.circular(5.h),
);
static BorderRadius get customBorderTL10 => BorderRadius.vertical(
  top: Radius.circular(10.h),
);
static BorderRadius get customBorderTL5 => BorderRadius.vertical(
  top: Radius.circular(5.h),
);// Rounded borders
static BorderRadius get roundedBorder10 => BorderRadius.circular(
  10.h,
);
static BorderRadius get roundedBorder14 => BorderRadius.circular(
  14.h,
);
static BorderRadius get roundedBorder18 => BorderRadius.circular(
  18.h,
);
static BorderRadius get roundedBorder2 => BorderRadius.circular(
  2.h,
);
static BorderRadius get roundedBorder24 => BorderRadius.circular(
  24.h,
);
static BorderRadius get roundedBorder34 => BorderRadius.circular(
  34.h,
);
static BorderRadius get roundedBorder5 => BorderRadius.circular(
  5.h,
);
static BorderRadius get roundedBorder54 => BorderRadius.circular(
  54.h,
);
static BorderRadius get roundedBorder70 => BorderRadius.circular(
  70.h,
);}