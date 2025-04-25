import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/personal_information_one_bloc.dart';
import 'models/personal_information_one_model.dart';

// ignore_for_file: must_be_immutable
class PersonalInformationOneScreen extends StatelessWidget {
  PersonalInformationOneScreen({Key? key})
      : super(
    key: key,
  );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalInformationOneBloc>(
      create: (context) =>
      PersonalInformationOneBloc(PersonalInformationOneState(
        personalInformationOneModelObj: PersonalInformationOneModel(),
      ))
        ..add(PersonalInformationOneInitialEvent()),
      child: PersonalInformationOneScreen(),
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
                  left: 16.h,
                  top: 20.h,
                  right: 16.h,
                ),
                child: Column(
                  spacing: 30,
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 4.h),
                      child: Column(
                        spacing: 12,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18.h,
                              vertical: 22.h,
                            ),
                            decoration: AppDecoration.inputshadow.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Column(
                              spacing: 10,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary24x24,
                                  height: 24.h,
                                  width: 26.h,
                                ),
                                Text(
                                  "lbl_add_photo".tr,
                                  style: CustomTextStyles.bodySmall12,
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_user_name".tr,
                              style: CustomTextStyles.labelLargeLatoBlack900,
                            ),
                          ),
                          _buildUserName(context),
                          _buildRownameone(context),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_home_phone".tr,
                              style: CustomTextStyles.labelLargeLatoBlack900,
                            ),
                          ),
                          _buildPhone(context),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_work_phone".tr,
                              style: CustomTextStyles.labelLargeLatoBlack900,
                            ),
                          ),
                          _buildPhoneone(context)
                        ],
                      ),
                    ),
                    _buildRowgiveup(context),
                    SizedBox(height: 74.h)
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
        text: "msg_personal_information".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: BlocSelector<PersonalInformationOneBloc,
          PersonalInformationOneState, TextEditingController?>(
        selector: (state) => state.userNameController,
        builder: (context, userNameController) {
          return CustomTextFormField(
            controller: userNameController,
            hintText: "lbl_user_name".tr,
            contentPadding: EdgeInsets.fromLTRB(16.h, 26.h, 16.h, 24.h),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
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
  Widget _buildNametwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: BlocSelector<PersonalInformationOneBloc,
          PersonalInformationOneState, TextEditingController?>(
        selector: (state) => state.nametwoController,
        builder: (context, nametwoController) {
          return CustomTextFormField(
            controller: nametwoController,
            hintText: "lbl_name".tr,
            contentPadding: EdgeInsets.fromLTRB(16.h, 26.h, 16.h, 24.h),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
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
  // Widget _buildSurnametwo(BuildContext context) {
  //   return BlocSelector<PersonalInformationOneBloc, PersonalInformationOneState,
  //       TextEditingController?>(
  //     selector: (state) => state.surnametwoController,
  //     builder: (context, surnametwoController) {
  //       return CustomTextFormField(
  //         controller: surnametwoController,
  //         hintText: "lbl_surname".tr,
  //         contentPadding: EdgeInsets.fromLTRB(16.h, 26.h, 16.h, 24.h),
  //         borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
  //         filled: true,
  //         fillColor: appTheme.gray100,
  //         validator: (value) {
  //           if (!isText(value)) {
  //             return "err_msg_please_enter_valid_text".tr;
  //           }
  //           return null;
  //         },
  //       );
  //     },
  //   );
  // }

  /// Section Widget
  Widget _buildRownameone(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_name".tr,
          style: CustomTextStyles.labelLargeLatoBlack900,
        ),
        _buildNametwo(context)
      ],
    );
    // return SizedBox(
    //   width: double.maxFinite,
    //   child: Row(
    //     children: [
    //       Expanded(
    //         child: Column(
    //           spacing: 12,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               "lbl_name".tr,
    //               style: CustomTextStyles.labelLargeLatoBlack900,
    //             ),
    //             _buildNametwo(context)
    //           ],
    //         ),
    //       ),
    //       Expanded(
    //         child: Column(
    //           spacing: 12,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               "lbl_surname".tr,
    //               style: CustomTextStyles.labelLargeLatoBlack900,
    //             ),
    //             _buildSurnametwo(context)
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: BlocSelector<PersonalInformationOneBloc,
          PersonalInformationOneState, TextEditingController?>(
        selector: (state) => state.phoneController,
        builder: (context, phoneController) {
          return CustomTextFormField(
            controller: phoneController,
            hintText: "lbl_home_phone".tr,
            textInputType: TextInputType.phone,
            contentPadding: EdgeInsets.fromLTRB(16.h, 26.h, 16.h, 24.h),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: BlocSelector<PersonalInformationOneBloc,
          PersonalInformationOneState, TextEditingController?>(
        selector: (state) => state.phoneoneController,
        builder: (context, phoneoneController) {
          return CustomTextFormField(
            controller: phoneoneController,
            hintText: "lbl_work_phone".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.phone,
            contentPadding: EdgeInsets.fromLTRB(16.h, 26.h, 16.h, 24.h),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildGiveup(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        height: 50.h,
        text: "lbl_give_up".tr,
        buttonTextStyle: CustomTextStyles.titleMediumLatoPrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 50.h,
        text: "lbl_save".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowgiveup(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        children: [_buildGiveup(context), _buildSave(context)],
      ),
    );
  }
}
