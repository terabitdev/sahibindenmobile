import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/cookies_bloc.dart';
import 'models/cookies_model.dart';

class CookiesScreen extends StatelessWidget {
  const CookiesScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<CookiesBloc>(
      create: (context) => CookiesBloc(CookiesState(
        cookiesModelObj: CookiesModel(),
      ))
        ..add(CookiesInitialEvent()),
      child: CookiesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CookiesBloc, CookiesState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: theme.colorScheme.onPrimary.withValues(
            alpha: 1,
          ),
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    spacing: 20,
                    children: [
                      SizedBox(height: 20.h),
                      _buildColumncookie(context),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 22.h,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 30.h,
                              ),
                              decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder14,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_let_my_home_be_your2".tr,
                                    style: CustomTextStyles.labelLargeTeal900,
                                  ),
                                  SizedBox(height: 6.h),
                                  Text(
                                    "msg_we_launched_the".tr,
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodyMedium13,
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    "msg_let_my_home_be".tr,
                                    maxLines: 16,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodyMedium13,
                                  ),
                                  SizedBox(height: 1000.h)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
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
        text: "lbl_cookies".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumncookie(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.h,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 20.h,
            ),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "msg_cookie_preferences".tr,
                    style: CustomTextStyles.labelLargeTeal900,
                  ),
                ),
                CustomIconButton(
                  height: 38.h,
                  width: 38.h,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.none,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 20.h,
            ),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "msg_cookie_information".tr,
                    style: CustomTextStyles.labelLargeTeal900,
                  ),
                ),
                CustomIconButton(
                  height: 38.h,
                  width: 38.h,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.none,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
