import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/while_buying_vehicle_comparison_bloc.dart';
import 'models/while_buying_vehicle_comparison_model.dart';

class WhileBuyingVehicleComparisonScreen extends StatelessWidget {
  const WhileBuyingVehicleComparisonScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<WhileBuyingVehicleComparisonBloc>(
      create: (context) =>
      WhileBuyingVehicleComparisonBloc(WhileBuyingVehicleComparisonState(
        whileBuyingVehicleComparisonModelObj:
        WhileBuyingVehicleComparisonModel(),
      ))
        ..add(WhileBuyingVehicleComparisonInitialEvent()),
      child: WhileBuyingVehicleComparisonScreen(),
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
              padding: EdgeInsets.only(
                left: 20.h,
                top: 20.h,
                right: 20.h,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                              left: 10.h,
                              top: 10.h,
                              right: 10.h,
                            ),
                            decoration: AppDecoration.cardshadow.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 14.h),
                                Padding(
                                  padding: EdgeInsets.only(right: 16.h),
                                  child: Text(
                                    "lbl_add_vehicle".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                SizedBox(height: 14.h),
                                _buildColumnbrand(context),
                                SizedBox(height: 20.h),
                                _buildColumnmodel(context),
                                SizedBox(height: 20.h),
                                _buildColumnyear(context),
                                SizedBox(height: 20.h),
                                _buildColumncasetype(context),
                                SizedBox(height: 20.h),
                                _buildColumnengine(context),
                                SizedBox(height: 20.h),
                                _buildColumngear(context),
                                SizedBox(height: 20.h),
                                _buildColumnpackage(context),
                                SizedBox(height: 20.h),
                                _buildColumnhardware(context),
                                SizedBox(height: 20.h),
                                CustomElevatedButton(
                                  text: "lbl_add".tr,
                                  buttonStyle: CustomButtonStyles.fillPrimary,
                                  buttonTextStyle:
                                  CustomTextStyles.labelLargeIndigo50,
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                              left: 10.h,
                              top: 10.h,
                              right: 10.h,
                            ),
                            decoration: AppDecoration.cardshadow.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 14.h),
                                Text(
                                  "lbl_add_vehicle".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                SizedBox(height: 14.h),
                                _buildColumnbrandone(context),
                                SizedBox(height: 20.h),
                                _buildColumnmodelone(context),
                                SizedBox(height: 20.h),
                                _buildColumnyearone(context),
                                SizedBox(height: 20.h),
                                _buildColumncasetype1(context),
                                SizedBox(height: 20.h),
                                _buildColumnengine1(context),
                                SizedBox(height: 20.h),
                                _buildColumngearone(context),
                                SizedBox(height: 20.h),
                                _buildColumnpackage1(context),
                                SizedBox(height: 20.h),
                                _buildColumnhardware1(context),
                                SizedBox(height: 20.h),
                                CustomElevatedButton(
                                  text: "lbl_add".tr,
                                  buttonStyle: CustomButtonStyles.fillPrimary,
                                  buttonTextStyle:
                                  CustomTextStyles.labelLargeIndigo50,
                                )
                              ],
                            ),
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
  Widget _buildColumnbrand(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_brand".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items: whileBuyingVehicleComparisonModelObj?.dropdownItemList ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnmodel(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_model".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList1 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnyear(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_year".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList2 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumncasetype(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_case_type".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList3 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnengine(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_engine".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList4 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumngear(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_gear".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList5 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnpackage(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_package".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList6 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnhardware(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_hardware".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList7 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnbrandone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_brand".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList8 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnmodelone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_model".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList9 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnyearone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_year".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList10 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumncasetype1(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_case_type".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList11 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnengine1(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_engine".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList12 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumngearone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_gear".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList13 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnpackage1(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_package".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList14 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnhardware1(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_hardware".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          BlocSelector<
              WhileBuyingVehicleComparisonBloc,
              WhileBuyingVehicleComparisonState,
              WhileBuyingVehicleComparisonModel?>(
            selector: (state) => state.whileBuyingVehicleComparisonModelObj,
            builder: (context, whileBuyingVehicleComparisonModelObj) {
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
                items:
                whileBuyingVehicleComparisonModelObj?.dropdownItemList15 ??
                    [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
