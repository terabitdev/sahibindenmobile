import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/zero_vehicle_world_authorized_one_bloc.dart';
import 'models/zero_vehicle_world_authorized_one_model.dart';

class ZeroVehicleWorldAuthorizedOneScreen extends StatelessWidget {
  const ZeroVehicleWorldAuthorizedOneScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<ZeroVehicleWorldAuthorizedOneBloc>(
      create: (context) =>
      ZeroVehicleWorldAuthorizedOneBloc(ZeroVehicleWorldAuthorizedOneState(
        zeroVehicleWorldAuthorizedOneModelObj:
        ZeroVehicleWorldAuthorizedOneModel(),
      ))
        ..add(ZeroVehicleWorldAuthorizedOneInitialEvent()),
      child: ZeroVehicleWorldAuthorizedOneScreen(),
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
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_search_station".tr,
                style: CustomTextStyles.titleSmallPrimary_1,
              ),
              SizedBox(height: 20.h),
              _buildColumnprovince(context),
              Spacer(
                flex: 46,
              ),
              CustomImageView(
                imagePath: ImageConstant.img1241641,
                height: 184.h,
                width: double.maxFinite,
              ),
              Spacer(
                flex: 53,
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
        text: "msg_electric_charging".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnprovince(BuildContext context) {
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
            "lbl_province2".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          SizedBox(height: 10.h),
          BlocSelector<
              ZeroVehicleWorldAuthorizedOneBloc,
              ZeroVehicleWorldAuthorizedOneState,
              ZeroVehicleWorldAuthorizedOneModel?>(
            selector: (state) => state.zeroVehicleWorldAuthorizedOneModelObj,
            builder: (context, zeroVehicleWorldAuthorizedOneModelObj) {
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
                hintText: "lbl_province".tr,
                items:
                zeroVehicleWorldAuthorizedOneModelObj?.dropdownItemList ??
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
            "msg_district_optional2".tr,
            style: CustomTextStyles.labelLargeBlack900_2,
          ),
          SizedBox(height: 10.h),
          BlocSelector<
              ZeroVehicleWorldAuthorizedOneBloc,
              ZeroVehicleWorldAuthorizedOneState,
              ZeroVehicleWorldAuthorizedOneModel?>(
            selector: (state) => state.zeroVehicleWorldAuthorizedOneModelObj,
            builder: (context, zeroVehicleWorldAuthorizedOneModelObj) {
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
                hintText: "lbl_district".tr,
                items:
                zeroVehicleWorldAuthorizedOneModelObj?.dropdownItemList1 ??
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
            text: "lbl_show_on_map".tr,
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_1,
          )
        ],
      ),
    );
  }
}
