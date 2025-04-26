import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/what_i_got_with_yepy_bloc.dart';
import 'models/what_i_got_with_yepy_model.dart';

class WhatIGotWithYepyScreen extends StatelessWidget {
  const WhatIGotWithYepyScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<WhatIGotWithYepyBloc>(
      create: (context) => WhatIGotWithYepyBloc(WhatIGotWithYepyState(
        whatIGotWithYepyModelObj: WhatIGotWithYepyModel(),
      ))
        ..add(WhatIGotWithYepyInitialEvent()),
      child: WhatIGotWithYepyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary.withValues(
        alpha: 1,
      ),
      resizeToAvoidBottomInset: false,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20.h,
            top: 10.h,
            right: 20.h,
          ),
          child: Column(
            spacing: 52,
            mainAxisSize: MainAxisSize.max,
            children: [_buildRowsearch(context), _buildAlert(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_what_i_got_with".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildRowsearch(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<WhatIGotWithYepyBloc, WhatIGotWithYepyState,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "lbl_search_address".tr,
                  contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 12.h, 14.h),
                );
              },
            ),
          ),
          CustomIconButton(
            height: 52.h,
            width: 52.h,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgUser,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAlert(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Container(
              width: 144.h,
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration.outline.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder70,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: 5.0,
                        sigmaY: 5.0,
                      ),
                      child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        decoration: AppDecoration.outline1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder54,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 70.h,
                              width: 70.h,
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder34,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl2".tr,
                                    style: CustomTextStyles
                                        .headlineSmallMontserrat,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_device".tr,
                  style: CustomTextStyles.headlineSmallLatoBluegray80003_1,
                ),
                TextSpan(
                  text: "lbl_not_found".tr,
                  style: CustomTextStyles.headlineSmallLatoPrimary,
                ),
                TextSpan(
                  text: " ",
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: Text(
              "msg_you_do_not_have4".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style:
              CustomTextStyles.bodySmallRalewayBluegray6000112_1.copyWith(
                height: 1.67,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          CustomElevatedButton(
            height: 50.h,
            text: "msg_discover_new_devices".tr,
          )
        ],
      ),
    );
  }
}
