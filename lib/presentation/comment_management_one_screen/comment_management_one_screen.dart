import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/comment_management_one_bloc.dart';
import 'models/comment_management_one_model.dart'; // ignore_for_file: must_be_immutable

class CommentManagementOneScreen extends StatelessWidget {
  CommentManagementOneScreen({Key? key})
      : super(
          key: key,
        );
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static Widget builder(BuildContext context) {
    return BlocProvider<CommentManagementOneBloc>(
      create: (context) => CommentManagementOneBloc(CommentManagementOneState(
        commentManagementOneModelObj: CommentManagementOneModel(),
      ))
        ..add(CommentManagementOneInitialEvent()),
      child: CommentManagementOneScreen(),
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
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 10.h,
                  right: 20.h,
                ),
                child: Column(
                  spacing: 16,
                  children: [
                    _buildRowsearch(context),
                    _buildColumnname(context),
                    _buildCommenttwo(context),
                    SizedBox(height: 82.h)
                  ],
                ),
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
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_comment_management".tr,
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
            child: BlocSelector<CommentManagementOneBloc,
                CommentManagementOneState, TextEditingController?>(
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
  Widget _buildNametwo(BuildContext context) {
    return BlocSelector<CommentManagementOneBloc, CommentManagementOneState,
        TextEditingController?>(
      selector: (state) => state.nametwoController,
      builder: (context, nametwoController) {
        return CustomTextFormField(
          controller: nametwoController,
          hintText: "lbl_name".tr,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFormtextfill(BuildContext context) {
    return BlocSelector<CommentManagementOneBloc, CommentManagementOneState,
        TextEditingController?>(
      selector: (state) => state.formtextfillController,
      builder: (context, formtextfillController) {
        return CustomTextFormField(
          controller: formtextfillController,
          hintText: "lbl_product_no".tr,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFormtextfill1(BuildContext context) {
    return BlocSelector<CommentManagementOneBloc, CommentManagementOneState,
        TextEditingController?>(
      selector: (state) => state.formtextfill1Controller,
      builder: (context, formtextfill1Controller) {
        return CustomTextFormField(
          controller: formtextfill1Controller,
          hintText: "lbl_product_title".tr,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnname(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_name".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildNametwo(context),
          Text(
            "lbl_product_no".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildFormtextfill(context),
          Text(
            "lbl_product_title".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildFormtextfill1(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommenttwo(BuildContext context) {
    return BlocSelector<CommentManagementOneBloc, CommentManagementOneState,
        TextEditingController?>(
      selector: (state) => state.commenttwoController,
      builder: (context, commenttwoController) {
        return CustomTextFormField(
          controller: commenttwoController,
          hintText: "lbl_comments".tr,
          hintStyle: CustomTextStyles.labelLargeGray60001,
          textInputAction: TextInputAction.done,
          maxLines: 12,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 12.h),
          borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
          filled: true,
          fillColor: theme.colorScheme.onPrimary.withValues(
            alpha: 1,
          ),
        );
      },
    );
  }
}
