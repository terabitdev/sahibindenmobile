import 'package:flutter/material.dart';
import '../core/app_export.dart';
/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles{
  // Filled button style
static ButtonStyle get fillGray => ElevatedButton.styleFrom(
  backgroundColor: appTheme.gray100,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.h),
  ),
  elevation: 0,
  padding: EdgeInsets.zero,
);
static ButtonStyle get fillOnPrimary => ElevatedButton.styleFrom(
  backgroundColor: theme.colorScheme.onPrimary.withValues(
    alpha: 1,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
  ),
  elevation: 0,
  padding: EdgeInsets.zero,
);
static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
  backgroundColor: theme.colorScheme.primary,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.h),
  ),
  elevation: 0,
  padding: EdgeInsets.zero,
);
static ButtonStyle get fillPrimaryTL20 => ElevatedButton.styleFrom(
  backgroundColor: theme.colorScheme.primary,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.h),
  ),
  elevation: 0,
  padding: EdgeInsets.zero,
);
// Outline button style
static ButtonStyle get outline => ElevatedButton.styleFrom(
  backgroundColor: theme.colorScheme.primary,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.h),
  ),
  elevation: 0,
  padding: EdgeInsets.zero,
);
static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
  backgroundColor: theme.colorScheme.onPrimary.withValues(
    alpha: 1,
  ),
  side: BorderSide(
    color: theme.colorScheme.primary,
    width: 1,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.h),
  ),
  padding: EdgeInsets.zero,
);
// text button style
static ButtonStyle get none => ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
    elevation: WidgetStateProperty.all<double>(0),
    padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
    side: WidgetStateProperty.all<BorderSide>(
      BorderSide(color: Colors.transparent),
    ));}