import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/what_i_bought_with_brand_new_bloc.dart';
import 'models/what_i_bought_with_brand_new_model.dart';

class WhatIBoughtWithBrandNewScreen extends StatelessWidget {
  const WhatIBoughtWithBrandNewScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<WhatIBoughtWithBrandNewBloc>(
      create: (context) =>
      WhatIBoughtWithBrandNewBloc(WhatIBoughtWithBrandNewState(
        whatIBoughtWithBrandNewModelObj: WhatIBoughtWithBrandNewModel(),
      ))
        ..add(WhatIBoughtWithBrandNewInitialEvent()),
      child: WhatIBoughtWithBrandNewScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WhatIBoughtWithBrandNewBloc,
        WhatIBoughtWithBrandNewState>(
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
                children: [_buildColumnbagone(context)],
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
      height: 44.h,
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 14.h),
      ),
      title: SizedBox(
        width: double.maxFinite,
        child: AppbarTitle(
          text: "msg_what_i_bought_with".tr,
          margin: EdgeInsets.only(
            left: 14.h,
            right: 47.h,
          ),
        ),
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnbagone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.h,
      ),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.h),
          CustomImageView(
            imagePath: ImageConstant.imgBag,
            height: 64.h,
            width: 72.h,
          ),
          Text(
            "msg_there_is_no_device".tr,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            "msg_you_can_view_the".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.labelLargeBlack900_1,
          ),
          CustomElevatedButton(
            text: "msg_discover_devices".tr,
            buttonTextStyle: CustomTextStyles.titleSmallOnPrimary_1,
            onPressed: () {
              onTapDiscover(context);
            },
          )
        ],
      ),
    );
  }

  /// Navigates to the yepyScreen when the action is triggered.
  onTapDiscover(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.yepyScreen,
    );
  }
}
