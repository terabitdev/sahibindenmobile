import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/terms_of_use_bloc.dart';
import 'models/terms_of_use_model.dart';

class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<TermsOfUseBloc>(
      create: (context) => TermsOfUseBloc(TermsOfUseState(
        termsOfUseModelObj: TermsOfUseModel(),
      ))
        ..add(TermsOfUseInitialEvent()),
      child: TermsOfUseScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TermsOfUseBloc, TermsOfUseState>(
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
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 20.h,
                    right: 20.h,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 24.h,
                          right: 20.h,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          spacing: 10,
                          mainAxisSize: MainAxisSize.min,
                          children: [
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
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "lbl_terms_of_use2".tr,
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
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "msg_advertisement_rules".tr,
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
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 4.h,
                                        bottom: 6.h,
                                      ),
                                      child: Text(
                                        "msg_doping_usage_rules".tr,
                                        style:
                                        CustomTextStyles.labelLargeTeal900,
                                      ),
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 6.h),
                                      child: Text(
                                        "msg_s_advertisement".tr,
                                        style:
                                        CustomTextStyles.labelLargeTeal900,
                                      ),
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
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 4.h,
                                        bottom: 6.h,
                                      ),
                                      child: Text(
                                        "msg_account_freezing".tr,
                                        style:
                                        CustomTextStyles.labelLargeTeal900,
                                      ),
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
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "msg_prohibited_products".tr,
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
                                vertical: 16.h,
                              ),
                              decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder14,
                              ),
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 234.h,
                                      margin: EdgeInsets.only(top: 2.h),
                                      child: Text(
                                        "msg_information_about".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                        CustomTextStyles.labelLargeTeal900,
                                      ),
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "msg_customer_relations".tr,
                                    style: CustomTextStyles.labelLargeTeal900,
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
                                vertical: 16.h,
                              ),
                              decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder14,
                              ),
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 214.h,
                                      margin: EdgeInsets.only(
                                        left: 4.h,
                                        top: 2.h,
                                      ),
                                      child: Text(
                                        "msg_rules_for_submitting".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                        CustomTextStyles.labelLargeTeal900,
                                      ),
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 6.h),
                                      child: Text(
                                        "msg_refundable_deposit".tr,
                                        style:
                                        CustomTextStyles.labelLargeTeal900,
                                      ),
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
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 4.h,
                                        bottom: 6.h,
                                      ),
                                      child: Text(
                                        "msg_sahibinden_com_content".tr,
                                        style:
                                        CustomTextStyles.labelLargeTeal900,
                                      ),
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
                                vertical: 16.h,
                              ),
                              decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder14,
                              ),
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 230.h,
                                      margin: EdgeInsets.only(top: 2.h),
                                      child: Text(
                                        "msg_real_estate_analysis".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                        CustomTextStyles.labelLargeTeal900,
                                      ),
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
                                vertical: 16.h,
                              ),
                              decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder14,
                              ),
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 216.h,
                                      margin: EdgeInsets.only(
                                        left: 4.h,
                                        top: 2.h,
                                      ),
                                      child: Text(
                                        "msg_market_and_competitor".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                        CustomTextStyles.labelLargeTeal900,
                                      ),
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
                                vertical: 16.h,
                              ),
                              decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder14,
                              ),
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: 204.h,
                                      margin: EdgeInsets.only(
                                        left: 4.h,
                                        top: 2.h,
                                      ),
                                      child: Text(
                                        "msg_contractual_business".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                        CustomTextStyles.labelLargeTeal900,
                                      ),
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
                      ),
                      SizedBox(height: 32.h)
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
      height: 44.h,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_terms_of_use".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }
}
