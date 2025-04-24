import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/auto_expertise_bloc.dart';
import 'models/auto_expertise_model.dart';

class AutoExpertiseScreen extends StatelessWidget {
  const AutoExpertiseScreen({Key? key})
      : super(
          key: key,
        );
  static Widget builder(BuildContext context) {
    return BlocProvider<AutoExpertiseBloc>(
      create: (context) => AutoExpertiseBloc(AutoExpertiseState(
        autoExpertiseModelObj: AutoExpertiseModel(),
      ))
        ..add(AutoExpertiseInitialEvent()),
      child: AutoExpertiseScreen(),
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
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    "msg_chose_sahibinden_com_s".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallBlack90012.copyWith(
                      height: 1.67,
                    ),
                  ),
                  _buildColumnprovince(context),
                  _buildColumndistrict(context),
                  _buildSelectabranch(context),
                  _buildRowrecommended(context),
                  _buildColumnexpertise(context),
                  _buildColumnstandard(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 58.h,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20SolidOnprimary,
        margin: EdgeInsets.only(left: 30.h),
      ),
      title: AppbarSubtitleThree(
        text: "lbl_oto360".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      styleType: Style.bgFillPrimary,
    );
  }

  /// Section Widget
  Widget _buildFormtextfill(BuildContext context) {
    return BlocSelector<AutoExpertiseBloc, AutoExpertiseState,
        TextEditingController?>(
      selector: (state) => state.formtextfillController,
      builder: (context, formtextfillController) {
        return CustomTextFormField(
          controller: formtextfillController,
          hintText: "lbl_province".tr,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnprovince(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_province".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildFormtextfill(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFormtextfill1(BuildContext context) {
    return BlocSelector<AutoExpertiseBloc, AutoExpertiseState,
        TextEditingController?>(
      selector: (state) => state.formtextfill1Controller,
      builder: (context, formtextfill1Controller) {
        return CustomTextFormField(
          controller: formtextfill1Controller,
          hintText: "lbl_district".tr,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumndistrict(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_district_optional".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildFormtextfill1(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectabranch(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "msg_select_a_branch".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeIndigo50,
    );
  }

  /// Section Widget
  Widget _buildRowrecommended(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(10.h),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        spacing: 2,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Text(
                              "lbl_mini_package".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelLargeBlack900_1,
                            ),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Divider(),
                          ),
                          Text(
                            "lbl_3_950_tl".tr,
                            style: theme.textTheme.labelLarge,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(10.h),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        spacing: 2,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 14.h),
                            child: Text(
                              "msg_standard_package".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelLargeBlack900_1,
                            ),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Divider(),
                          ),
                          Text(
                            "lbl_4_500_tl".tr,
                            style: theme.textTheme.labelLarge,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 104.h,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.h,
                    vertical: 2.h,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL5,
                  ),
                  child: Text(
                    "lbl_recommended".tr,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeOnPrimary_1,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(6.h),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL5,
                  ),
                  child: Column(
                    spacing: 2,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.h),
                        child: Text(
                          "lbl_full_package".tr,
                          style: CustomTextStyles.labelLargeBlack900_1,
                        ),
                      ),
                      Text(
                        "lbl_5_250_tl".tr,
                        style: CustomTextStyles.labelLarge_1.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder2,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "lbl_10_off".tr,
                              style: CustomTextStyles.labelLargeOnPrimary,
                            )
                          ],
                        ),
                      ),
                      Text(
                        "lbl_4_750_tl".tr,
                        style: theme.textTheme.labelLarge,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBuy(BuildContext context) {
    return CustomElevatedButton(
      height: 46.h,
      text: "lbl_buy".tr,
      margin: EdgeInsets.only(
        left: 4.h,
        right: 2.h,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeIndigo50,
    );
  }

  /// Section Widget
  ///
  Widget _buildColumnexpertise(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_expertise_packages".tr,
            style: CustomTextStyles.labelLargeBlack90013,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 24.h,
            ),
            decoration: AppDecoration.cardshadow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              spacing: 14,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "msg_mini_expertise_package".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 2.h),
                  child: _buildColumncheckmark(
                    context,
                    bodypaintOne: "lbl_body_paint".tr,
                    engineOne: "msg_engine_mechanical".tr,
                    lowerOne: "msg_lower_mechanical".tr,
                    frontteamOne: "msg_front_team_undercarriage".tr,
                    obdelectronic: "msg_obd_electronic_diagnostic".tr,
                    brakeOne: "msg_brake_suspension".tr,
                    vehicleTwo: "msg_vehicle_interior".tr,
                    vehicleThree: "msg_vehicle_exterior".tr,
                    dynoengineOne: "msg_dyno_engine_performance".tr,
                  ),
                ),
                Text(
                  "lbl_3950_tl2".tr,
                  style: theme.textTheme.titleLarge,
                ),
                _buildBuy(context)
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBuyone(BuildContext context) {
    return CustomElevatedButton(
      height: 46.h,
      text: "lbl_buy".tr,
      margin: EdgeInsets.only(
        left: 4.h,
        right: 2.h,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeIndigo50,
    );
  }

  /// Section Widget
  Widget _buildColumnstandard(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 24.h,
      ),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "msg_standard_expertise".tr,
            style: theme.textTheme.titleSmall,
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 2.h),
            child: _buildColumncheckmark(
              context,
              bodypaintOne: "lbl_body_paint".tr,
              engineOne: "msg_engine_mechanical".tr,
              lowerOne: "msg_lower_mechanical".tr,
              frontteamOne: "msg_front_team_undercarriage".tr,
              obdelectronic: "msg_obd_electronic_diagnostic".tr,
              brakeOne: "msg_brake_suspension".tr,
              vehicleTwo: "msg_vehicle_interior".tr,
              vehicleThree: "msg_vehicle_exterior".tr,
              dynoengineOne: "msg_dyno_engine_performance".tr,
            ),
          ),
          Text(
            "lbl_3950_tl2".tr,
            style: theme.textTheme.titleLarge,
          ),
          _buildBuyone(context)
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildColumncheckmark(
    BuildContext context, {
    required String bodypaintOne,
    required String engineOne,
    required String lowerOne,
    required String frontteamOne,
    required String obdelectronic,
    required String brakeOne,
    required String vehicleTwo,
    required String vehicleThree,
    required String dynoengineOne,
  }) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 20.h,
                width: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  bodypaintOne,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.black900,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 22.h),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 20.h,
                width: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  engineOne,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.black900,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 22.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCheckmark,
              height: 20.h,
              width: 20.h,
            ),
            Text(
              lowerOne,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.black900,
              ),
            )
          ],
        ),
        SizedBox(height: 22.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCheckmark,
              height: 20.h,
              width: 20.h,
            ),
            Text(
              frontteamOne,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.black900,
              ),
            )
          ],
        ),
        SizedBox(height: 22.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCheckmark,
              height: 20.h,
              width: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                obdelectronic,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: appTheme.black900,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 14.h),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 20.h,
                width: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Text(
                  brakeOne,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.black900,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 20.h,
                width: 20.h,
                alignment: Alignment.bottomCenter,
              ),
              Text(
                vehicleTwo,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: appTheme.black900,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 18.h),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 20.h,
                width: 20.h,
              ),
              SizedBox(
                width: 258.h,
                child: Text(
                  vehicleThree,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.black900,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 6.h),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 20.h,
                width: 20.h,
              ),
              Container(
                width: 250.h,
                margin: EdgeInsets.only(left: 14.h),
                child: Text(
                  dynoengineOne,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.black900,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}