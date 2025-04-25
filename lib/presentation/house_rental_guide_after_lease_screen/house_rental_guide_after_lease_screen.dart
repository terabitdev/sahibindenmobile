import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/house_rental_guide_after_lease_bloc.dart';
import 'models/house_rental_guide_after_lease_model.dart';

class HouseRentalGuideAfterLeaseScreen extends StatelessWidget {
  const HouseRentalGuideAfterLeaseScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<HouseRentalGuideAfterLeaseBloc>(
      create: (context) =>
      HouseRentalGuideAfterLeaseBloc(HouseRentalGuideAfterLeaseState(
        houseRentalGuideAfterLeaseModelObj: HouseRentalGuideAfterLeaseModel(),
      ))
        ..add(HouseRentalGuideAfterLeaseInitialEvent()),
      child: HouseRentalGuideAfterLeaseScreen(),
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
        child: SizedBox(
          width: double.maxFinite,
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
                  _buildRowsearch(context),
                  Text(
                    "lbl_after_lease".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  _buildColumnwhyisa(context),
                  _buildColumnwhatarete(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 58.h,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20SolidOnprimary,
        margin: EdgeInsets.only(left: 30.h),
      ),
      title: AppbarSubtitleOne(
        text: "lbl_real_estate360".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      styleType: Style.bgFillPrimary,
    );
  }

  /// Section Widget
  Widget _buildRowsearch(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: BlocSelector<HouseRentalGuideAfterLeaseBloc,
                HouseRentalGuideAfterLeaseState, TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "msg_type_the_content".tr,
                  contentPadding: EdgeInsets.fromLTRB(20.h, 16.h, 14.h, 16.h),
                );
              },
            ),
          ),
          CustomIconButton(
            height: 52.h,
            width: 52.h,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgUser,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnwhyisa(BuildContext context) {
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_why_is_a_management".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleSmallSemiBold_1.copyWith(
              height: 1.66,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img36052630611452734,
            height: 142.h,
            width: double.maxFinite,
          ),
          Text(
            "msg_the_management_style".tr,
            maxLines: 11,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumBluegray400_1.copyWith(
              height: 1.66,
            ),
          ),
          Text(
            "lbl_more".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnwhatarete(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 248.h,
            child: Text(
              "msg_what_are_tenant".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallSemiBold_1.copyWith(
                height: 1.66,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img36052630611452734,
            height: 142.h,
            width: double.maxFinite,
          ),
          Text(
            "msg_within_the_scope".tr,
            maxLines: 9,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumBluegray400_1.copyWith(
              height: 1.66,
            ),
          ),
          Text(
            "lbl_more".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          )
        ],
      ),
    );
  }
}
