import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarTitle extends StatelessWidget {
  AppbarTitle({Key? key, required this.text, this.onTap, this.margin})
      : super(
    key: key,
  );

  final String text;

  final Function? onTap;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: SizedBox(
          width: double.maxFinite,
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleMediumTeal900.copyWith(
              color: appTheme.teal900,
              height: 1.39,
            ),
          ),
        ),
      ),
    );
  }
}
