import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/real_estate_360_real_estate_expertise_bloc.dart';
import 'models/real_estate_360_real_estate_expertise_model.dart';

// ignore_for_file: must_be_immutable
class RealEstate360RealEstateExpertiseScreen extends StatelessWidget {
  RealEstate360RealEstateExpertiseScreen({Key? key})
      : super(
    key: key,
  );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RealEstate360RealEstateExpertiseBloc>(
      create: (context) => RealEstate360RealEstateExpertiseBloc(
          RealEstate360RealEstateExpertiseState(
            realEstate360RealEstateExpertiseModelObj:
            RealEstate360RealEstateExpertiseModel(),
          ))
        ..add(RealEstate360RealEstateExpertiseInitialEvent()),
      child: RealEstate360RealEstateExpertiseScreen(),
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
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.only(
                        left: 24.h,
                        top: 20.h,
                        right: 24.h,
                      ),
                      decoration: AppDecoration.cardshadow.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 2.h),
                          Text(
                            "msg_get_a_real_estate".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleSmallSemiBold_1,
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            "msg_special_for_our".tr,
                            style: CustomTextStyles.bodySmallBlack90012,
                          ),
                          SizedBox(height: 14.h),
                          Text(
                            "msg_contact_information".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 14.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    spacing: 10,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_name".tr,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_2,
                                      ),
                                      _buildNametwo(context)
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    spacing: 10,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_surname".tr,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_2,
                                      ),
                                      _buildSurnametwo(context)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "lbl_mobile_number".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          SizedBox(height: 10.h),
                          _buildMobileNumber(context),
                          SizedBox(height: 20.h),
                          Text(
                            "lbl_email_address".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          SizedBox(height: 10.h),
                          _buildEmail(context),
                          SizedBox(height: 20.h),
                          Text(
                            "msg_information_on_the".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 14.h),
                          Text(
                            "lbl_province".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          SizedBox(height: 10.h),
                          BlocSelector<
                              RealEstate360RealEstateExpertiseBloc,
                              RealEstate360RealEstateExpertiseState,
                              RealEstate360RealEstateExpertiseModel?>(
                            selector: (state) =>
                            state.realEstate360RealEstateExpertiseModelObj,
                            builder: (context,
                                realEstate360RealEstateExpertiseModelObj) {
                              return CustomDropDown(
                                icon: Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgFramePrimary,
                                    height: 14.h,
                                    width: 14.h,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                iconSize: 14.h,
                                hintText: "lbl_province".tr,
                                items: realEstate360RealEstateExpertiseModelObj
                                    ?.dropdownItemList ??
                                    [],
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 14.h,
                                  vertical: 10.h,
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            "lbl_district".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          SizedBox(height: 10.h),
                          BlocSelector<
                              RealEstate360RealEstateExpertiseBloc,
                              RealEstate360RealEstateExpertiseState,
                              RealEstate360RealEstateExpertiseModel?>(
                            selector: (state) =>
                            state.realEstate360RealEstateExpertiseModelObj,
                            builder: (context,
                                realEstate360RealEstateExpertiseModelObj) {
                              return CustomDropDown(
                                icon: Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgFramePrimary,
                                    height: 14.h,
                                    width: 14.h,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                iconSize: 14.h,
                                hintText: "lbl_district".tr,
                                items: realEstate360RealEstateExpertiseModelObj
                                    ?.dropdownItemList1 ??
                                    [],
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 14.h,
                                  vertical: 10.h,
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 20.h),
                          _buildSendanexpert(context),
                          SizedBox(height: 14.h),
                          _buildSampleexpert(context)
                        ],
                      ),
                    )
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
        text: "msg_real_estate_expertise".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildNametwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: BlocSelector<RealEstate360RealEstateExpertiseBloc,
          RealEstate360RealEstateExpertiseState, TextEditingController?>(
        selector: (state) => state.nametwoController,
        builder: (context, nametwoController) {
          return CustomTextFormField(
            controller: nametwoController,
            hintText: "lbl_name".tr,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 10.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            filled: true,
            fillColor: appTheme.gray100,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSurnametwo(BuildContext context) {
    return BlocSelector<RealEstate360RealEstateExpertiseBloc,
        RealEstate360RealEstateExpertiseState, TextEditingController?>(
      selector: (state) => state.surnametwoController,
      builder: (context, surnametwoController) {
        return CustomTextFormField(
          controller: surnametwoController,
          hintText: "lbl_surname".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 10.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
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
  Widget _buildMobileNumber(BuildContext context) {
    return BlocSelector<RealEstate360RealEstateExpertiseBloc,
        RealEstate360RealEstateExpertiseState, TextEditingController?>(
      selector: (state) => state.mobileNumberController,
      builder: (context, mobileNumberController) {
        return CustomTextFormField(
          controller: mobileNumberController,
          hintText: "lbl_mobile_number".tr,
          textInputType: TextInputType.phone,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 10.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<RealEstate360RealEstateExpertiseBloc,
        RealEstate360RealEstateExpertiseState, TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "lbl_email_address".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 10.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSendanexpert(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_send_an_expert_request".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_1,
    );
  }

  /// Section Widget
  Widget _buildSampleexpert(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_sample_expert_report".tr,
      buttonStyle: CustomButtonStyles.outlinePrimary,
      buttonTextStyle: CustomTextStyles.labelLargePrimary,
    );
  }
}
