import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/date_time_utils.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/completed_orders_bloc.dart';
import 'models/completed_orders_model.dart';

class CompletedOrdersScreen extends StatelessWidget {
  const CompletedOrdersScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<CompletedOrdersBloc>(
      create: (context) => CompletedOrdersBloc(CompletedOrdersState(
        completedOrdersModelObj: CompletedOrdersModel(),
      ))
        ..add(CompletedOrdersInitialEvent()),
      child: CompletedOrdersScreen(),
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
            spacing: 18,
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
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_completed_orders".tr,
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
            child: BlocSelector<CompletedOrdersBloc, CompletedOrdersState,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "lbl_search_orders".tr,
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
    return BlocSelector<CompletedOrdersBloc, CompletedOrdersState,
        TextEditingController?>(
      selector: (state) => state.formtextfillController,
      builder: (context, formtextfillController) {
        return CustomTextFormField(
          controller: formtextfillController,
          hintText: "lbl_19211_029".tr,
          hintStyle: CustomTextStyles.labelLargeBlack900_2,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFormtextfill1(BuildContext context) {
    return BlocSelector<CompletedOrdersBloc, CompletedOrdersState,
        TextEditingController?>(
      selector: (state) => state.formtextfill1Controller,
      builder: (context, formtextfill1Controller) {
        return CustomTextFormField(
          controller: formtextfill1Controller,
          hintText: "lbl_house".tr,
          hintStyle: CustomTextStyles.labelLargeBlack900_2,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return BlocSelector<CompletedOrdersBloc, CompletedOrdersState,
        TextEditingController?>(
      selector: (state) => state.dateController,
      builder: (context, dateController) {
        return CustomTextFormField(
          readOnly: true,
          controller: dateController,
          hintText: "lbl_3_27_2025".tr,
          hintStyle: CustomTextStyles.labelLargeBlack900_2,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
          onTap: () {
            onTapDate(context);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPricetwo(BuildContext context) {
    return BlocSelector<CompletedOrdersBloc, CompletedOrdersState,
        TextEditingController?>(
      selector: (state) => state.pricetwoController,
      builder: (context, pricetwoController) {
        return CustomTextFormField(
          controller: pricetwoController,
          hintText: "lbl_344_tl".tr,
          hintStyle: CustomTextStyles.labelLargeBlack900_2,
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
            "lbl_property_type".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildFormtextfill1(context),
          Text(
            "lbl_date_purchased".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildDate(context),
          Text(
            "lbl_price".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildPricetwo(context)
        ],
      ),
    );
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [completedOrdersModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapDate(BuildContext context) async {
    var initialState = BlocProvider.of<CompletedOrdersBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      context.read<CompletedOrdersBloc>().add(ChangeDateEvent(date: dateTime));
      initialState.dateController?.text = dateTime.format(pattern: M_D_Y);
    }
  }
}
