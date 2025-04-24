import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: colorScheme.onPrimary.withValues(
            alpha: 1,
          ),
          side: BorderSide(
            color: colorScheme.primary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          color: colorScheme.onPrimary.withValues(
            alpha: 1,
          ),
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.indigo200,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(
      color: appTheme.black900,
      fontSize: 16.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: appTheme.black900,
      fontSize: 15.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: colorScheme.primary,
      fontSize: 9.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(
      color: colorScheme.primary,
      fontSize: 50.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle(
      color: colorScheme.onPrimary.withValues(
        alpha: 1,
      ),
      fontSize: 25.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle(
      color: appTheme.indigo200,
      fontSize: 12.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      color: appTheme.cyan900,
      fontSize: 10.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: appTheme.blueGray60001,
      fontSize: 8.fSize,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      color: appTheme.black900,
      fontSize: 20.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: colorScheme.onPrimaryContainer,
      fontSize: 18.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: appTheme.black900,
      fontSize: 15.fSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
  );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF1544AB),
    primaryContainer: Color(0XFFFED9A8),
    errorContainer: Color(0XFF554E56),
    onError: Color(0XFF2F2F2F),
    onPrimary: Color(0X19FFFFFF),
    onPrimaryContainer: Color(0XFF122D4D),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber300 => Color(0XFFFFD15B);
  Color get amber500 => Color(0XFFFFC107);
  Color get amber50001 => Color(0XFFFCBC04);
// Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue200 => Color(0XFF8DCCFF);
  Color get blue300 => Color(0XFF57B7EB);
  Color get blue50 => Color(0XFFE1EFFB);
  Color get blue5001 => Color(0XFFE5F0FF);
  Color get blue600 => Color(0XFF1278F3);
  Color get blueA100 => Color(0XFF91B0FF);
  Color get blueA400 => Color(0XFF3183FF);
  Color get blueA700 => Color(0XFF1558E9);
// BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFCCDFED);
  Color get blueGray10002 => Color(0XFFCCCCCC);
  Color get blueGray300 => Color(0XFF95A2B0);
  Color get blueGray400 => Color(0XFF888F9F);
  Color get blueGray40001 => Color(0XFF8D8D8D);
  Color get blueGray50 => Color(0XFFECEDF3);
  Color get blueGray600 => Color(0XFF636978);
  Color get blueGray60001 => Color(0XFF53577A);
  Color get blueGray700 => Color(0XFF2D5871);
  Color get blueGray800 => Color(0XFF242B5C);
  Color get blueGray80001 => Color(0XFF414952);
  Color get blueGray80002 => Color(0XFF1D4859);
  Color get blueGray80003 => Color(0XFF234F68);
  Color get blueGray80004 => Color(0XFF3F3D56);
  Color get blueGray80005 => Color(0XFF1F4C6B);
  Color get blueGray80006 => Color(0XFF393E67);
  Color get blueGray900 => Color(0XFF2F2E41);
// Cyan
  Color get cyan900 => Color(0XFF00406A);
// DeepOrange
  Color get deepOrange100 => Color(0XFFFFCDBE);
  Color get deepOrange10001 => Color(0XFFFFB8B8);
  Color get deepOrange10002 => Color(0XFFFCCAC3);
  Color get deepOrange400 => Color(0XFFF8664F);
  Color get deepOrange50 => Color(0XFFFFEBE8);
  Color get deepOrangeA100 => Color(0XFFF89C8D);
  Color get deepOrangeA200 => Color(0XFFFA712D);
  Color get deepOrangeA400 => Color(0XFFF24500);
// DeepPurple
  Color get deepPurpleA200 => Color(0XFF6349FD);
  Color get deepPurpleA20001 => Color(0XFF9A49F2);
// Gray
  Color get gray100 => Color(0XFFF5F4F7);
  Color get gray10001 => Color(0XFFF2F2F2);
  Color get gray10002 => Color(0XFFF1F0FF);
  Color get gray300 => Color(0XFFE3E4E8);
  Color get gray30001 => Color(0XFFE6E6E6);
  Color get gray30002 => Color(0XFFE2DEE2);
  Color get gray400 => Color(0XFFAEAEB2);
  Color get gray40001 => Color(0XFFB8B8B8);
  Color get gray40002 => Color(0XFFB3B3B3);
  Color get gray50 => Color(0XFFF9F9F9);
  Color get gray5001 => Color(0XFFF9F9FF);
  Color get gray600 => Color(0XFFA0616A);
  Color get gray60001 => Color(0XFF707070);
  Color get gray80005 => Color(0X053D3D3D);
  Color get gray900 => Color(0XFF231E1C);
  Color get gray90001 => Color(0XFF1A1A1A);
// Green
  Color get green300 => Color(0XFF87D873);
  Color get greenA700 => Color(0XFF04AD3D);
// Indigo
  Color get indigo200 => Color(0XFFA1A5C1);
  Color get indigo20001 => Color(0XFFA1A4C1);
  Color get indigo50 => Color(0XFFE6E9F5);
  Color get indigo5001 => Color(0XFFE9EDF5);
  Color get indigo600 => Color(0XFF39519D);
  Color get indigo90005 => Color(0X05002060);
  Color get indigoA100 => Color(0XFF7584F2);
  Color get indigoA200 => Color(0XFF606AEA);
  Color get indigoA20001 => Color(0XFF6C63FF);
// LightBlue
  Color get lightBlue100 => Color(0XFFAAE1F9);
  Color get lightBlueA700 => Color(0XFF0182FC);
// LightGreen
  Color get lightGreen300 => Color(0XFF9FE387);
  Color get lightGreen500 => Color(0XFF8BC83F);
// Lime
  Color get lime500 => Color(0XFFC4F236);
  Color get limeA700 => Color(0XFFA1D51C);
// Orange
  Color get orange200 => Color(0XFFF4C892);
  Color get orange400 => Color(0XFFFFB125);
  Color get orange600 => Color(0XFFFE8205);
// Pink
  Color get pink200 => Color(0XFFF695A9);
  Color get pink300 => Color(0XFFFF6584);
  Color get pink30001 => Color(0XFFF47A94);
// Red
  Color get red100 => Color(0XFFFFDECF);
  Color get red10001 => Color(0XFFFFDED8);
  Color get red400 => Color(0XFFCC5144);
  Color get red500 => Color(0XFFF33939);
  Color get red50001 => Color(0XFFEB423F);
  Color get red700 => Color(0XFFD13330);
  Color get redA200 => Color(0XFFFF4C4C);
  Color get redA20001 => Color(0XFFFD4755);
  Color get redA700 => Color(0XFFFF0000);
// Teal
  Color get teal900 => Color(0XFF00263F);
// Yellow
  Color get yellow700 => Color(0XFFFFC42C);
  Color get yellow800 => Color(0XFFEBA72E);
  Color get yellow80001 => Color(0XFFF7B030);
  Color get yellow900 => Color(0XFFFF901D);
  Color get yellowA400 => Color(0XFFF9E109);
}
