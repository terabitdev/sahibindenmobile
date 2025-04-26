import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import 'bloc/safe_e_commerce_three_bloc.dart';
import 'models/safe_e_commerce_three_model.dart';

class SafeECommerceThreeScreen extends StatelessWidget {
  const SafeECommerceThreeScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<SafeECommerceThreeBloc>(
      create: (context) => SafeECommerceThreeBloc(SafeECommerceThreeState(
        safeECommerceThreeModelObj: SafeECommerceThreeModel(),
      ))
        ..add(SafeECommerceThreeInitialEvent()),
      child: SafeECommerceThreeScreen(),
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
          padding: EdgeInsets.only(top: 6.h),
          child: Column(
            spacing: 20,
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildHorizontalscrol(context),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 20.h,
                ),
                child: BlocSelector<SafeECommerceThreeBloc,
                    SafeECommerceThreeState, SafeECommerceThreeModel?>(
                  selector: (state) => state.safeECommerceThreeModelObj,
                  builder: (context, safeECommerceThreeModelObj) {
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
                      hintText: "lbl_products_i_sell2".tr,
                      items: safeECommerceThreeModelObj?.dropdownItemList ?? [],
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 24.h,
                      ),
                      borderDecoration: DropDownStyleHelper.fillGrayTL20,
                    );
                  },
                ),
              ),
              _buildColumnvideocame(context)
            ],
          ),
        ),
      ),
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
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_safe_e_commerce".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildHorizontalscrol(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "msg_my_purchase_transactions".tr,
                  style: CustomTextStyles.titleSmallGray9000114,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "msg_my_sales_transactions".tr,
                    style: CustomTextStyles.titleSmallGray9000114,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "msg_my_delivery_billing4".tr,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallGray9000114,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12.h),
                  padding: EdgeInsets.fromLTRB(12.h, 6.h, 12.h, 4.h),
                  decoration: AppDecoration.outlineBlueA,
                  child: Column(
                    children: [
                      Text(
                        "msg_comment_management".tr,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallGray90001,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnvideocame(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(vertical: 58.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 18,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h),
          CustomImageView(
            imagePath: ImageConstant.imgVideoCamera,
            height: 52.h,
            width: 54.h,
          ),
          Text(
            "msg_no_items_found_to".tr,
            style: theme.textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
