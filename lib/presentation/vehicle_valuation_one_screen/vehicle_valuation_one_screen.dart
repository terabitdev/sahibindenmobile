import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/vehicle_valuation_one_bloc.dart';
import 'models/vehicle_valuation_one_model.dart';

class VehicleValuationOneScreen extends StatelessWidget {
  const VehicleValuationOneScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<VehicleValuationOneBloc>(
      create: (context) => VehicleValuationOneBloc(VehicleValuationOneState(
        vehicleValuationOneModelObj: VehicleValuationOneModel(),
      ))
        ..add(VehicleValuationOneInitialEvent()),
      child: VehicleValuationOneScreen(),
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
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20.h,
            top: 20.h,
            right: 20.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_vehicle_valuation".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      "msg_select_the_vehicle".tr,
                      style: CustomTextStyles.labelLargeBluegray400,
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      "lbl_type".tr,
                      style: CustomTextStyles.labelLargeBlack900_2,
                    ),
                    SizedBox(height: 10.h),
                    BlocSelector<VehicleValuationOneBloc,
                        VehicleValuationOneState, VehicleValuationOneModel?>(
                      selector: (state) => state.vehicleValuationOneModelObj,
                      builder: (context, vehicleValuationOneModelObj) {
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
                          hintText: "lbl_type".tr,
                          items:
                          vehicleValuationOneModelObj?.dropdownItemList ??
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
                    BlocSelector<VehicleValuationOneBloc,
                        VehicleValuationOneState, VehicleValuationOneModel?>(
                      selector: (state) => state.vehicleValuationOneModelObj,
                      builder: (context, vehicleValuationOneModelObj) {
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
                          vehicleValuationOneModelObj?.dropdownItemList1 ??
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
                      "lbl_brand".tr,
                      style: CustomTextStyles.labelLargeBlack900_2,
                    ),
                    SizedBox(height: 10.h),
                    BlocSelector<VehicleValuationOneBloc,
                        VehicleValuationOneState, VehicleValuationOneModel?>(
                      selector: (state) => state.vehicleValuationOneModelObj,
                      builder: (context, vehicleValuationOneModelObj) {
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
                          vehicleValuationOneModelObj?.dropdownItemList2 ??
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
                      text: "lbl_calculate".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.labelLargeIndigo50,
                    )
                  ],
                ),
              )
            ],
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
        text: "msg_vehicle_valuation".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }
}
