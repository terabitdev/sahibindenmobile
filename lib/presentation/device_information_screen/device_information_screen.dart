import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/device_information_bloc.dart';
import 'models/device_information_model.dart';

class DeviceInformationScreen extends StatelessWidget {
  const DeviceInformationScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<DeviceInformationBloc>(
      create: (context) => DeviceInformationBloc(DeviceInformationState(
        deviceInformationModelObj: DeviceInformationModel(),
      ))
        ..add(DeviceInformationInitialEvent()),
      child: DeviceInformationScreen(),
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
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  spacing: 14,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_device2".tr,
                      style: CustomTextStyles.labelLargeBlack900_2,
                    ),
                    BlocSelector<DeviceInformationBloc, DeviceInformationState,
                        DeviceInformationModel?>(
                      selector: (state) => state.deviceInformationModelObj,
                      builder: (context, deviceInformationModelObj) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.only(left: 16.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFramePrimary,
                              height: 20.h,
                              width: 20.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          iconSize: 20.h,
                          hintText: "lbl_device2".tr,
                          items:
                          deviceInformationModelObj?.dropdownItemList ?? [],
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 24.h,
                          ),
                          borderDecoration: DropDownStyleHelper.fillGrayTL20,
                        );
                      },
                    ),
                    Text(
                      "lbl_brand".tr,
                      style: CustomTextStyles.labelLargeBlack900_2,
                    ),
                    BlocSelector<DeviceInformationBloc, DeviceInformationState,
                        DeviceInformationModel?>(
                      selector: (state) => state.deviceInformationModelObj,
                      builder: (context, deviceInformationModelObj) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.only(left: 16.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFramePrimary,
                              height: 20.h,
                              width: 20.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          iconSize: 20.h,
                          hintText: "lbl_brand".tr,
                          items: deviceInformationModelObj?.dropdownItemList1 ??
                              [],
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 24.h,
                          ),
                          borderDecoration: DropDownStyleHelper.fillGrayTL20,
                        );
                      },
                    ),
                    Text(
                      "lbl_model".tr,
                      style: CustomTextStyles.labelLargeBlack900_2,
                    ),
                    BlocSelector<DeviceInformationBloc, DeviceInformationState,
                        DeviceInformationModel?>(
                      selector: (state) => state.deviceInformationModelObj,
                      builder: (context, deviceInformationModelObj) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.only(left: 16.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFramePrimary,
                              height: 20.h,
                              width: 20.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          iconSize: 20.h,
                          hintText: "lbl_model".tr,
                          items: deviceInformationModelObj?.dropdownItemList2 ??
                              [],
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 24.h,
                          ),
                          borderDecoration: DropDownStyleHelper.fillGrayTL20,
                        );
                      },
                    ),
                    Text(
                      "msg_storage_capacity".tr,
                      style: CustomTextStyles.labelLargeBlack900_2,
                    ),
                    BlocSelector<DeviceInformationBloc, DeviceInformationState,
                        DeviceInformationModel?>(
                      selector: (state) => state.deviceInformationModelObj,
                      builder: (context, deviceInformationModelObj) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.only(left: 16.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFramePrimary,
                              height: 20.h,
                              width: 20.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          iconSize: 20.h,
                          hintText: "msg_storage_capacity".tr,
                          items: deviceInformationModelObj?.dropdownItemList3 ??
                              [],
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 24.h,
                          ),
                          borderDecoration: DropDownStyleHelper.fillGrayTL20,
                        );
                      },
                    ),
                    Text(
                      "msg_where_was_the_device".tr,
                      style: CustomTextStyles.labelLargeBlack900_2,
                    ),
                    BlocSelector<DeviceInformationBloc, DeviceInformationState,
                        DeviceInformationModel?>(
                      selector: (state) => state.deviceInformationModelObj,
                      builder: (context, deviceInformationModelObj) {
                        return CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.only(left: 16.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFramePrimary,
                              height: 20.h,
                              width: 20.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          iconSize: 20.h,
                          hintText: "msg_where_was_the_device".tr,
                          items: deviceInformationModelObj?.dropdownItemList4 ??
                              [],
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 24.h,
                          ),
                          borderDecoration: DropDownStyleHelper.fillGrayTL20,
                        );
                      },
                    )
                  ],
                ),
              ),
              CustomElevatedButton(
                height: 50.h,
                text: "lbl_continue".tr,
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
        text: "msg_device_information".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }
}
