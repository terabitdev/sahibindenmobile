import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/account_holder_blocked_bloc.dart';
import 'models/account_holder_blocked_model.dart';

class AccountHolderBlockedScreen extends StatelessWidget {
  const AccountHolderBlockedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountHolderBlockedBloc>(
      create: (context) => AccountHolderBlockedBloc(AccountHolderBlockedState(
        accountHolderBlockedModelObj: AccountHolderBlockedModel(),
      ))
        ..add(AccountHolderBlockedInitialEvent()),
      child: AccountHolderBlockedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountHolderBlockedBloc, AccountHolderBlockedState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: theme.colorScheme.onPrimary.withValues(alpha: 1),
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 20.h,
                top: 52.h,
                right: 20.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [_buildAlert(context)],
              ),
            ),
          ),
        );
      },
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
        text: "msg_account_holder".tr,
      ),
      styleType: Style.bgFillOnPrimary,
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
            imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
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
                      imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
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
                                    style: CustomTextStyles.headlineSmallMontserrat,
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
                  text: "lbl_account2".tr,
                  style: CustomTextStyles.headlineSmallLatoBluegray80003_1,
                ),
                TextSpan(
                  text: "lbl_blocked".tr,
                  style: CustomTextStyles.headlineSmallLatoPrimary,
                ),
                TextSpan(text: " "),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 24.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_you_have_been_blocked".tr,
                  style: CustomTextStyles.bodySmallRalewayBluegray6000112,
                ),
                TextSpan(
                  text: "lbl_to".tr,
                  style: CustomTextStyles.bodySmallRalewayBluegray6000112,
                ),
                TextSpan(
                  text: "lbl_request".tr,
                  style: CustomTextStyles.bodySmallRalewayBluegray6000112,
                ),
                TextSpan(
                  text: "lbl3".tr,
                  style: CustomTextStyles.bodySmallRalewayBluegray6000112,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 54.h),
          CustomElevatedButton(
            height: 50.h,
            text: "msg_request_recovery".tr,
          )
        ],
      ),
    );
  }
}
