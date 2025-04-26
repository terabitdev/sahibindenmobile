import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/zero_vehicle_world_authorized_bloc.dart';
import 'models/zero_vehicle_world_authorized_model.dart';

class ZeroVehicleWorldAuthorizedScreen extends StatelessWidget {
  const ZeroVehicleWorldAuthorizedScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<ZeroVehicleWorldAuthorizedBloc>(
      create: (context) =>
      ZeroVehicleWorldAuthorizedBloc(ZeroVehicleWorldAuthorizedState(
        zeroVehicleWorldAuthorizedModelObj: ZeroVehicleWorldAuthorizedModel(),
      ))
        ..add(ZeroVehicleWorldAuthorizedInitialEvent()),
      child: ZeroVehicleWorldAuthorizedScreen(),
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
            spacing: 20,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_call_an_authorized".tr,
                style: CustomTextStyles.titleSmallPrimary_1,
              ),
              _buildColumnbrand(context),
              CustomImageView(
                imagePath: ImageConstant.img1241641,
                height: 184.h,
                width: double.maxFinite,
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
        text: "msg_authorized_dealer".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnbrand(BuildContext context) {
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
            "lbl_brand".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          SizedBox(height: 10.h),
          BlocSelector<
              ZeroVehicleWorldAuthorizedBloc,
              ZeroVehicleWorldAuthorizedState,
              ZeroVehicleWorldAuthorizedModel?>(
            selector: (state) => state.zeroVehicleWorldAuthorizedModelObj,
            builder: (context, zeroVehicleWorldAuthorizedModelObj) {
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
                zeroVehicleWorldAuthorizedModelObj?.dropdownItemList ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          ),
          SizedBox(height: 20.h),
          Text(
            "msg_authorized_dealer".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          SizedBox(height: 10.h),
          BlocSelector<
              ZeroVehicleWorldAuthorizedBloc,
              ZeroVehicleWorldAuthorizedState,
              ZeroVehicleWorldAuthorizedModel?>(
            selector: (state) => state.zeroVehicleWorldAuthorizedModelObj,
            builder: (context, zeroVehicleWorldAuthorizedModelObj) {
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
                hintText: "msg_authorized_dealer".tr,
                items:
                zeroVehicleWorldAuthorizedModelObj?.dropdownItemList1 ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          ),
          SizedBox(height: 20.h),
          Text(
            "lbl_province".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          SizedBox(height: 10.h),
          BlocSelector<
              ZeroVehicleWorldAuthorizedBloc,
              ZeroVehicleWorldAuthorizedState,
              ZeroVehicleWorldAuthorizedModel?>(
            selector: (state) => state.zeroVehicleWorldAuthorizedModelObj,
            builder: (context, zeroVehicleWorldAuthorizedModelObj) {
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
                hintText: "lbl_province2".tr,
                items:
                zeroVehicleWorldAuthorizedModelObj?.dropdownItemList2 ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          ),
          SizedBox(height: 20.h),
          CustomElevatedButton(
            text: "lbl_show_on_map".tr,
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_1,
          )
        ],
      ),
    );
  }
}
