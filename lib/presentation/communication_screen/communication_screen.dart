import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/communication_bloc.dart';
import 'models/communication_model.dart'; // ignore_for_file: must_be_immutable

class CommunicationScreen extends StatelessWidget {
  CommunicationScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static Widget builder(BuildContext context) {
    return BlocProvider<CommunicationBloc>(
      create: (context) => CommunicationBloc(CommunicationState(
        communicationModelObj: CommunicationModel(),
      ))
        ..add(CommunicationInitialEvent()),
      child: CommunicationScreen(),
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
                  top: 20.h,
                  right: 20.h,
                ),
                child: Column(
                  spacing: 20,
                  children: [
                    _buildColumnshowon(context),
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 24.h,
                      ),
                      decoration: AppDecoration.cardshadow.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_business_name".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_sahibinden_com".tr,
                              style: CustomTextStyles.bodySmallBlack90012,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Divider(
                              color: appTheme.blueGray400,
                              indent: 6.h,
                              endIndent: 6.h,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_trade_name".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "msg_sahibinden_information".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: CustomTextStyles.bodySmallBlack90012,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Divider(
                              color: appTheme.blueGray400,
                              indent: 6.h,
                              endIndent: 6.h,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "msg_person_in_charge".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          _buildFilizsaranone(context),
                          SizedBox(height: 14.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "msg_trade_registry_number".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          _buildZipcode(context),
                          SizedBox(height: 14.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_kep_address".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          _buildAddress(context),
                          SizedBox(height: 14.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_mersis_number".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          _buildGroup1614one(context),
                          SizedBox(height: 14.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_head_office".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "msg_degirmen_yolu_st".tr,
                              maxLines: 8,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: CustomTextStyles.bodySmallBlack90012,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Divider(
                              color: appTheme.blueGray400,
                              indent: 6.h,
                              endIndent: 6.h,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_call_centre".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 24.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_0_850_222_44_44".tr,
                              style: CustomTextStyles.bodySmallBlack90012,
                            ),
                          ),
                          SizedBox(height: 24.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Divider(
                              color: appTheme.blueGray400,
                              indent: 6.h,
                              endIndent: 6.h,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_support_center".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 22.h),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "msg_problem_suggestion2".tr,
                              style: CustomTextStyles.bodySmallBlack90012,
                            ),
                          ),
                          SizedBox(height: 6.h)
                        ],
                      ),
                    ),
                    _buildColumngroup2219(context),
                    SizedBox(height: 20.h)
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
        text: "lbl_communication".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildShowonmap(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_show_on_map".tr,
      buttonTextStyle: CustomTextStyles.titleSmallLatoOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnshowon(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1241641158x304,
            height: 158.h,
            width: double.maxFinite,
          ),
          _buildShowonmap(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFilizsaranone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: BlocSelector<CommunicationBloc, CommunicationState,
          TextEditingController?>(
        selector: (state) => state.filizsaranoneController,
        builder: (context, filizsaranoneController) {
          return CustomTextFormField(
            controller: filizsaranoneController,
            hintText: "lbl_filiz_saran".tr,
            hintStyle: CustomTextStyles.bodySmallBlack90012,
            contentPadding: EdgeInsets.fromLTRB(12.h, 6.h, 12.h, 12.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: BlocSelector<CommunicationBloc, CommunicationState,
          TextEditingController?>(
        selector: (state) => state.zipcodeController,
        builder: (context, zipcodeController) {
          return CustomTextFormField(
            controller: zipcodeController,
            hintText: "lbl_433844".tr,
            hintStyle: CustomTextStyles.bodySmallBlack90012,
            contentPadding: EdgeInsets.fromLTRB(12.h, 6.h, 12.h, 12.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: BlocSelector<CommunicationBloc, CommunicationState,
          TextEditingController?>(
        selector: (state) => state.addressController,
        builder: (context, addressController) {
          return CustomTextFormField(
            controller: addressController,
            hintText: "msg_sahibinden_hs02_kep_tr".tr,
            hintStyle: CustomTextStyles.bodySmallBlack90012,
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.fromLTRB(12.h, 6.h, 12.h, 12.h),
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup1614one(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: BlocSelector<CommunicationBloc, CommunicationState,
          TextEditingController?>(
        selector: (state) => state.group1614oneController,
        builder: (context, group1614oneController) {
          return CustomTextFormField(
            controller: group1614oneController,
            hintText: "msg_0739014655600017".tr,
            hintStyle: CustomTextStyles.bodySmallBlack90012,
            contentPadding: EdgeInsets.fromLTRB(12.h, 6.h, 12.h, 12.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup2219one(BuildContext context) {
    return BlocSelector<CommunicationBloc, CommunicationState,
        TextEditingController?>(
      selector: (state) => state.group2219oneController,
      builder: (context, group2219oneController) {
        return CustomTextFormField(
          controller: group2219oneController,
          hintText: "msg_relevant_laws_and".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGroup2221one(BuildContext context) {
    return BlocSelector<CommunicationBloc, CommunicationState,
        TextEditingController?>(
      selector: (state) => state.group2221oneController,
      builder: (context, group2221oneController) {
        return CustomTextFormField(
          controller: group2221oneController,
          hintText: "msg_law_on_consumer".tr,
          hintStyle: CustomTextStyles.bodySmallBlack90012,
          contentPadding: EdgeInsets.fromLTRB(12.h, 6.h, 12.h, 12.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGroup2223one(BuildContext context) {
    return BlocSelector<CommunicationBloc, CommunicationState,
        TextEditingController?>(
      selector: (state) => state.group2223oneController,
      builder: (context, group2223oneController) {
        return CustomTextFormField(
          controller: group2223oneController,
          hintText: "msg_distance_contracts2".tr,
          hintStyle: CustomTextStyles.bodySmallBlack90012,
          contentPadding: EdgeInsets.fromLTRB(12.h, 6.h, 12.h, 12.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGroup2225one(BuildContext context) {
    return BlocSelector<CommunicationBloc, CommunicationState,
        TextEditingController?>(
      selector: (state) => state.group2225oneController,
      builder: (context, group2225oneController) {
        return CustomTextFormField(
          controller: group2225oneController,
          hintText: "msg_law_on_the_regulation".tr,
          hintStyle: CustomTextStyles.bodySmallBlack90012,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumngroup2219(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildGroup2219one(context),
          _buildGroup2221one(context),
          _buildGroup2223one(context),
          _buildGroup2225one(context),
          Text(
            "msg_regulation_on_commercial".tr,
            maxLines: 8,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
            style: CustomTextStyles.bodySmallBlack90012,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.blueGray400,
            ),
          ),
          Text(
            "msg_regulation_on_service".tr,
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
            style: CustomTextStyles.bodySmallBlack90012,
          ),
          SizedBox(height: 2.h)
        ],
      ),
    );
  }
}
