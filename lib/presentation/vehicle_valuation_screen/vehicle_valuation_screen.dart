import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/vehicle_valuation_bloc.dart';
import 'models/vehicle_valuation_model.dart';

class VehicleValuationScreen extends StatelessWidget {
  const VehicleValuationScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<VehicleValuationBloc>(
      create: (context) => VehicleValuationBloc(VehicleValuationState(
        vehicleValuationModelObj: VehicleValuationModel(),
      ))
        ..add(VehicleValuationInitialEvent()),
      child: VehicleValuationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VehicleValuationBloc, VehicleValuationState>(
      builder: (context, state) {
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
                    padding: EdgeInsets.all(24.h),
                    decoration: AppDecoration.cardshadow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      spacing: 14,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "msg_vehicle_valuation".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        Text(
                          "msg_learn_the_estimated".tr,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleSmall,
                        ),
                        CustomElevatedButton(
                          height: 52.h,
                          text: "msg_vehicle_valuation".tr,
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: CustomTextStyles.titleSmallIndigo50,
                        ),
                        Text(
                          "msg_sahibinden_com_is".tr,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallBluegray400,
                        )
                      ],
                    ),
                  )
                ],
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
