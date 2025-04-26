import 'package:flutter/material.dart';
import 'package:sahibindenmobile/core/app_export.dart';

import 'appbar_leading_image.dart';
import 'appbar_subtitle_three.dart';
import 'appbar_trailing_image.dart';
import 'custom_app_bar.dart';

/// Section Widget
PreferredSizeWidget buildPrimaryAppbar(BuildContext context, {required String title, actions}) {
  return CustomAppBar(
    height: 58.h,
    leadingWidth: 50.h,
    leading: AppbarLeadingImage(
      imagePath: ImageConstant.imgFrameOnprimary,
      margin: EdgeInsets.only(left: 30.h),
    ),
    title: AppbarSubtitleThree(
      text: title,
      margin: EdgeInsets.only(left: 30.h),
    ),
    actions: actions,
    styleType: Style.bgFillPrimary,
  );
}