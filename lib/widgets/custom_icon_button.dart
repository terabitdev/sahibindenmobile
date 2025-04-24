import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
    color: theme.colorScheme.primary,
    borderRadius: BorderRadius.circular(10.h),
  );
  static BoxDecoration get fillBlue => BoxDecoration(
    color: appTheme.blue5001,
    borderRadius: BorderRadius.circular(8.h),
  );
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray100,
    borderRadius: BorderRadius.circular(24.h),
  );
  static BoxDecoration get outline => BoxDecoration(
    color: theme.colorScheme.onPrimary.withValues(
      alpha: 0.78,
    ),
    borderRadius: BorderRadius.circular(12.h),
    boxShadow: [
      BoxShadow(
        spreadRadius: 2.h,
        blurRadius: 2.h,
      )
    ],
  );
  static BoxDecoration get outlineTL12 => BoxDecoration(
    color: theme.colorScheme.primary,
    borderRadius: BorderRadius.circular(12.h),
    boxShadow: [
      BoxShadow(
        spreadRadius: 2.h,
        blurRadius: 2.h,
      )
    ],
  );
  static BoxDecoration get outlineTL24 => BoxDecoration(
    color: theme.colorScheme.onPrimary.withValues(
      alpha: 0.8,
    ),
    borderRadius: BorderRadius.circular(24.h),
    boxShadow: [
      BoxShadow(
        spreadRadius: 2.h,
        blurRadius: 2.h,
      )
    ],
  );
  static BoxDecoration get outlineTL241 => BoxDecoration(
    color: theme.colorScheme.primary,
    borderRadius: BorderRadius.circular(24.h),
    boxShadow: [
      BoxShadow(
        spreadRadius: 2.h,
        blurRadius: 2.h,
      )
    ],
  );
  static BoxDecoration get none => BoxDecoration();
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
        this.alignment,
        this.height,
        this.width,
        this.decoration,
        this.padding,
        this.onTap,
        this.child})
      : super(
    key: key,
  );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final BoxDecoration? decoration;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
        alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
    height: height ?? 0,
    width: width ?? 0,
    child: DecoratedBox(
      decoration: decoration ??
          BoxDecoration(
            color: theme.colorScheme.onPrimary.withValues(
              alpha: 1,
            ),
            borderRadius: BorderRadius.circular(18.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withValues(
                  alpha: 0.11,
                ),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  0,
                ),
              )
            ],
          ),
      child: IconButton(
        padding: padding ?? EdgeInsets.zero,
        onPressed: onTap,
        icon: child ?? Container(),
      ),
    ),
  );
}
