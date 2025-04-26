import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/zero_vehicle_world_bloc.dart';
import 'models/zero_vehicle_world_model.dart';

class ZeroVehicleWorldScreen extends StatelessWidget {
  const ZeroVehicleWorldScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<ZeroVehicleWorldBloc>(
      create: (context) => ZeroVehicleWorldBloc(ZeroVehicleWorldState(
        zeroVehicleWorldModelObj: ZeroVehicleWorldModel(),
      ))
        ..add(ZeroVehicleWorldInitialEvent()),
      child: ZeroVehicleWorldScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary.withValues(
        alpha: 1,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildColumnheroicons(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 20.h,
                      right: 20.h,
                    ),
                    child: Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildColumnsearchbyb(context),
                        _buildColumnsearchbyy(context),
                        _buildColumnsearchbyc(context),
                        Text(
                          "msg_vehicle_comparison".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        _buildColumnaddvehicl(context),
                        _buildColumnaddvehicl1(context)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnheroicons(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 40.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
              margin: EdgeInsets.only(left: 20.h),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "msg_vehicle_valuation".tr,
            ),
            styleType: Style.bgFillOnPrimary,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchvehicles(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_search_vehicles".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_1,
    );
  }

  /// Section Widget
  Widget _buildColumnsearchbyb(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_search_by_brand".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 14.h),
          Text(
            "lbl_brand".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          SizedBox(height: 10.h),
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList1 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList2 ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          ),
          SizedBox(height: 20.h),
          _buildSearchvehicles(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFormtextfill(BuildContext context) {
    return BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
        TextEditingController?>(
      selector: (state) => state.formtextfillController,
      builder: (context, formtextfillController) {
        return CustomTextFormField(
          controller: formtextfillController,
          hintText: "lbl_min_tl".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 10.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFormtextfill1(BuildContext context) {
    return BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
        TextEditingController?>(
      selector: (state) => state.formtextfill1Controller,
      builder: (context, formtextfill1Controller) {
        return CustomTextFormField(
          controller: formtextfill1Controller,
          hintText: "lbl_max_tl".tr,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 10.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSearchfora(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_search_for_a_vehicle2".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_1,
    );
  }

  /// Section Widget
  Widget _buildColumnsearchbyy(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_search_by_your_budget".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 14.h),
          Text(
            "lbl_min_tl".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          SizedBox(height: 10.h),
          _buildFormtextfill(context),
          SizedBox(height: 20.h),
          Text(
            "lbl_max_tl".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          SizedBox(height: 10.h),
          _buildFormtextfill1(context),
          SizedBox(height: 20.h),
          Text(
            "lbl_gear".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          SizedBox(height: 10.h),
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList3 ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          ),
          SizedBox(height: 20.h),
          Text(
            "lbl_fuel".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          SizedBox(height: 10.h),
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                hintText: "lbl_fuel".tr,
                items: zeroVehicleWorldModelObj?.dropdownItemList4 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList5 ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          ),
          SizedBox(height: 20.h),
          _buildSearchfora(context),
          SizedBox(height: 14.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchvehicles1(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_search_vehicles2".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_1,
    );
  }

  /// Section Widget
  Widget _buildColumnsearchbyc(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_search_by_case_type".tr,
            style: theme.textTheme.titleSmall,
          ),
          _buildSearchvehicles1(context),
          SizedBox(height: 158.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAdd(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_add".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeIndigo50,
    );
  }

  /// Section Widget
  Widget _buildColumnaddvehicl(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList6 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList7 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList8 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList9 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList10 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList11 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList12 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList13 ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          ),
          SizedBox(height: 20.h),
          _buildAdd(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddone(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_add".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeIndigo50,
    );
  }

  /// Section Widget
  Widget _buildColumnaddvehicl1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList14 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList15 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList16 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList17 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList18 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList19 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList20 ?? [],
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
          BlocSelector<ZeroVehicleWorldBloc, ZeroVehicleWorldState,
              ZeroVehicleWorldModel?>(
            selector: (state) => state.zeroVehicleWorldModelObj,
            builder: (context, zeroVehicleWorldModelObj) {
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
                items: zeroVehicleWorldModelObj?.dropdownItemList21 ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          ),
          SizedBox(height: 20.h),
          _buildAddone(context)
        ],
      ),
    );
  }
}
