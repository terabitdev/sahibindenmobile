import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/zero_vehicle_world_vehicle_comparison_bloc.dart';
import 'models/zero_vehicle_world_vehicle_comparison_model.dart';

class ZeroVehicleWorldVehicleComparisonScreen extends StatelessWidget {
  const ZeroVehicleWorldVehicleComparisonScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<ZeroVehicleWorldVehicleComparisonBloc>(
      create: (context) => ZeroVehicleWorldVehicleComparisonBloc(
          ZeroVehicleWorldVehicleComparisonState(
            zeroVehicleWorldVehicleComparisonModelObj:
            ZeroVehicleWorldVehicleComparisonModel(),
          ))
        ..add(ZeroVehicleWorldVehicleComparisonInitialEvent()),
      child: ZeroVehicleWorldVehicleComparisonScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.only(top: 18.h),
              child: Column(
                spacing: 14,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_new_car_comparison".tr,
                      style: CustomTextStyles.titleSmallPrimary_1,
                    ),
                  ),
                  _buildHorizontalscrol(context),
                  SizedBox(height: 14.h)
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
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_vehicle_comparison".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildHorizontalscrol(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
          child: SizedBox(
            width: 1098.h,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.h,
                      right: 24.h,
                    ),
                    decoration: AppDecoration.cardshadow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "lbl_add_vehicle".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 14.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_brand".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_brand".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_model".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_model".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList1 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_year".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_year".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList2 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_case_type".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_case_type".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList3 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_engine".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_engine".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList4 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_gear".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_gear".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList5 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_package".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_package".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList6 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_hardware".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_hardware".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList7 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        CustomElevatedButton(
                          text: "lbl_add".tr,
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: CustomTextStyles.labelLargeIndigo50,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 20.h),
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.h,
                      right: 24.h,
                    ),
                    decoration: AppDecoration.cardshadow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_brand".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_brand".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList8 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "lbl_model".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_model".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList9 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "lbl_year".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_year".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList10 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "lbl_case_type".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_case_type".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList11 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "lbl_engine".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_engine".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList12 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "lbl_gear".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_gear".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList13 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "lbl_package".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_package".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList14 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "lbl_hardware".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_hardware".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList15 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        CustomElevatedButton(
                          text: "lbl_add".tr,
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: CustomTextStyles.labelLargeIndigo50,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 20.h),
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.h,
                      right: 24.h,
                    ),
                    decoration: AppDecoration.cardshadow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "lbl_add_vehicle".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 14.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_brand".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_brand".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList16 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_model".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_model".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList17 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_year".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_year".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList18 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_case_type".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_case_type".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList19 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_engine".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_engine".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList20 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_gear".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_gear".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList21 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_package".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_package".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList22 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_hardware".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocSelector<
                            ZeroVehicleWorldVehicleComparisonBloc,
                            ZeroVehicleWorldVehicleComparisonState,
                            ZeroVehicleWorldVehicleComparisonModel?>(
                          selector: (state) =>
                          state.zeroVehicleWorldVehicleComparisonModelObj,
                          builder: (context,
                              zeroVehicleWorldVehicleComparisonModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary,
                                  height: 14.h,
                                  width: 14.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 14.h,
                              hintText: "lbl_hardware".tr,
                              items: zeroVehicleWorldVehicleComparisonModelObj
                                  ?.dropdownItemList23 ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 10.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 20.h),
                        CustomElevatedButton(
                          text: "lbl_add".tr,
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: CustomTextStyles.labelLargeIndigo50,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
