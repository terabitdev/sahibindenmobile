import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/vehicle_valuation_two_bloc.dart';
import 'models/vehicle_valuation_two_model.dart';

class VehicleValuationTwoScreen extends StatelessWidget {
  const VehicleValuationTwoScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<VehicleValuationTwoBloc>(
      create: (context) => VehicleValuationTwoBloc(VehicleValuationTwoState(
        vehicleValuationTwoModelObj: VehicleValuationTwoModel(),
      ))
        ..add(VehicleValuationTwoInitialEvent()),
      child: VehicleValuationTwoScreen(),
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
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 22.h,
                    top: 24.h,
                    right: 22.h,
                  ),
                  decoration: AppDecoration.cardshadow.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    spacing: 12,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_calculated_valuation".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        "msg_here_is_the_valuation".tr,
                        style: CustomTextStyles.labelLargeBluegray400,
                      ),
                      Text(
                        "lbl_type".tr,
                        style: CustomTextStyles.labelLargeLatoBlack900,
                      ),
                      BlocSelector<VehicleValuationTwoBloc,
                          VehicleValuationTwoState, TextEditingController?>(
                        selector: (state) => state.formtextfillController,
                        builder: (context, formtextfillController) {
                          return CustomTextFormField(
                            controller: formtextfillController,
                            hintText: "lbl_car".tr,
                            hintStyle: CustomTextStyles.labelLargeBlack900_2,
                            contentPadding:
                            EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
                          );
                        },
                      ),
                      Text(
                        "lbl_year".tr,
                        style: CustomTextStyles.labelLargeLatoBlack900,
                      ),
                      BlocSelector<VehicleValuationTwoBloc,
                          VehicleValuationTwoState, TextEditingController?>(
                        selector: (state) => state.zipcodeController,
                        builder: (context, zipcodeController) {
                          return CustomTextFormField(
                            controller: zipcodeController,
                            hintText: "lbl_2023".tr,
                            hintStyle: CustomTextStyles.labelLargeBlack900_2,
                            contentPadding:
                            EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
                          );
                        },
                      ),
                      Text(
                        "lbl_brand".tr,
                        style: CustomTextStyles.labelLargeLatoBlack900,
                      ),
                      BlocSelector<VehicleValuationTwoBloc,
                          VehicleValuationTwoState, TextEditingController?>(
                        selector: (state) => state.formtextfill1Controller,
                        builder: (context, formtextfill1Controller) {
                          return CustomTextFormField(
                            controller: formtextfill1Controller,
                            hintText: "lbl_citroen".tr,
                            hintStyle: CustomTextStyles.labelLargeBlack900_1,
                            textInputAction: TextInputAction.done,
                            contentPadding:
                            EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18.h)
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
