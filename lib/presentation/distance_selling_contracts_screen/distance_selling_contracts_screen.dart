import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/distance_selling_contracts_bloc.dart';
import 'models/distance_selling_contracts_model.dart';

class DistanceSellingContractsScreen extends StatelessWidget {
  const DistanceSellingContractsScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<DistanceSellingContractsBloc>(
      create: (context) =>
      DistanceSellingContractsBloc(DistanceSellingContractsState(
        distanceSellingContractsModelObj: DistanceSellingContractsModel(),
      ))
        ..add(DistanceSellingContractsInitialEvent()),
      child: DistanceSellingContractsScreen(),
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
            left: 18.h,
            top: 10.h,
            right: 18.h,
          ),
          child: Column(
            spacing: 12,
            mainAxisSize: MainAxisSize.max,
            children: [_buildRowsearch(context), _buildColumnadno(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 46.h,
      leadingWidth: 35.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 15.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_distance_selling".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildRowsearch(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<DistanceSellingContractsBloc,
                DistanceSellingContractsState, TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "msg_in_my_sales_with".tr,
                  hintStyle: CustomTextStyles.bodySmallBluegray40001,
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
  Widget _buildFormtextfill(BuildContext context) {
    return BlocSelector<DistanceSellingContractsBloc,
        DistanceSellingContractsState, TextEditingController?>(
      selector: (state) => state.formtextfillController,
      builder: (context, formtextfillController) {
        return CustomTextFormField(
          controller: formtextfillController,
          hintText: "lbl_ad_no".tr,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFormtextfill1(BuildContext context) {
    return BlocSelector<DistanceSellingContractsBloc,
        DistanceSellingContractsState, TextEditingController?>(
      selector: (state) => state.formtextfill1Controller,
      builder: (context, formtextfill1Controller) {
        return CustomTextFormField(
          controller: formtextfill1Controller,
          hintText: "lbl_product_no".tr,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFormtextfill2(BuildContext context) {
    return BlocSelector<DistanceSellingContractsBloc,
        DistanceSellingContractsState, TextEditingController?>(
      selector: (state) => state.formtextfill2Controller,
      builder: (context, formtextfill2Controller) {
        return CustomTextFormField(
          controller: formtextfill2Controller,
          hintText: "lbl_sales_person".tr,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFormtextfill3(BuildContext context) {
    return BlocSelector<DistanceSellingContractsBloc,
        DistanceSellingContractsState, TextEditingController?>(
      selector: (state) => state.formtextfill3Controller,
      builder: (context, formtextfill3Controller) {
        return CustomTextFormField(
          controller: formtextfill3Controller,
          hintText: "lbl_sell_by".tr,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnadno(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_ad_no".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildFormtextfill(context),
          Text(
            "lbl_product_title".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildFormtextfill1(context),
          Text(
            "lbl_sales_person".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildFormtextfill2(context),
          Text(
            "lbl_sell_by".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildFormtextfill3(context)
        ],
      ),
    );
  }
}
