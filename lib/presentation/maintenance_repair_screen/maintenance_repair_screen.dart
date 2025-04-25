import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/maintenance_repair_bloc.dart';
import 'models/maintenance_repair_model.dart';

class MaintenanceRepairScreen extends StatelessWidget {
  const MaintenanceRepairScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<MaintenanceRepairBloc>(
      create: (context) => MaintenanceRepairBloc(MaintenanceRepairState(
        maintenanceRepairModelObj: MaintenanceRepairModel(),
      ))
        ..add(MaintenanceRepairInitialEvent()),
      child: MaintenanceRepairScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaintenanceRepairBloc, MaintenanceRepairState>(
      builder: (context, state) {
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
                    top: 16.h,
                    right: 20.h,
                  ),
                  child: Column(
                    spacing: 20,
                    children: [
                      _buildColumnautocare(context),
                      _buildColumnperiodic(context),
                      SizedBox(height: 28.h)
                    ],
                  ),
                ),
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
        text: "msg_maintenance_repair".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnautocare(BuildContext context) {
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
            "msg_auto_care_protection".tr,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            "msg_benefit_from_a_variety".tr,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallBlack90012,
          ),
          Text(
            "msg_detailed_information".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 20.h,
            ),
            decoration: AppDecoration.cardshadow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              spacing: 14,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowperiodicOne(
                    context,
                    periodicOne: "msg_ceramic_coating".tr,
                  ),
                ),
                CustomElevatedButton(
                  text: "msg_join_the_campaign".tr,
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnperiodic(BuildContext context) {
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
            "msg_periodic_maintenance".tr,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            "msg_have_all_general".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallBlack90012,
          ),
          Text(
            "msg_detailed_information".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 20.h,
            ),
            decoration: AppDecoration.cardshadow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              spacing: 14,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRowperiodicOne(
                    context,
                    periodicOne: "msg_periodic_maintenance2".tr,
                  ),
                ),
                CustomElevatedButton(
                  text: "msg_join_the_campaign".tr,
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_1,
                )
              ],
            ),
          ),
          SizedBox(height: 18.h)
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowperiodicOne(
      BuildContext context, {
        required String periodicOne,
      }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.img36052630611452734,
          height: 98.h,
          width: 144.h,
        ),
        SizedBox(
          width: 96.h,
          child: Text(
            periodicOne,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.labelLargeBlack900_1.copyWith(
              color: appTheme.black900,
              height: 1.66,
            ),
          ),
        )
      ],
    );
  }
}
