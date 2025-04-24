import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/change_password_bloc.dart';
import 'models/change_password_model.dart'; // ignore_for_file: must_be_immutable

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static Widget builder(BuildContext context) {
    return BlocProvider<ChangePasswordBloc>(
      create: (context) => ChangePasswordBloc(ChangePasswordState(
        changePasswordModelObj: ChangePasswordModel(),
      ))
        ..add(ChangePasswordInitialEvent()),
      child: ChangePasswordScreen(),
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
        child: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 20.h,
              top: 20.h,
              right: 20.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(24.h),
                  decoration: AppDecoration.cardshadow.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "msg_to_change_your_password".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "msg_current_password".tr,
                        style: CustomTextStyles.labelLargeLatoBlack900,
                      ),
                      SizedBox(height: 6.h),
                      _buildPassword(context),
                      SizedBox(height: 14.h),
                      Text(
                        "lbl_new_password".tr,
                        style: CustomTextStyles.labelLargeLatoBlack900,
                      ),
                      SizedBox(height: 6.h),
                      _buildNewpassword(context),
                      SizedBox(height: 14.h),
                      Text(
                        "lbl_retype_password".tr,
                        style: CustomTextStyles.labelLargeLatoBlack900,
                      ),
                      SizedBox(height: 6.h),
                      _buildPasswordone(context),
                      SizedBox(height: 14.h),
                      _buildSave(context)
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
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_change_password".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocSelector<ChangePasswordBloc, ChangePasswordState,
        TextEditingController?>(
      selector: (state) => state.passwordController,
      builder: (context, passwordController) {
        return CustomTextFormField(
          controller: passwordController,
          hintText: "msg".tr,
          hintStyle: CustomTextStyles.bodySmallGray900,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return BlocSelector<ChangePasswordBloc, ChangePasswordState,
        TextEditingController?>(
      selector: (state) => state.newpasswordController,
      builder: (context, newpasswordController) {
        return CustomTextFormField(
          controller: newpasswordController,
          hintText: "msg".tr,
          hintStyle: CustomTextStyles.bodySmallGray900,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordone(BuildContext context) {
    return BlocSelector<ChangePasswordBloc, ChangePasswordState,
        TextEditingController?>(
      selector: (state) => state.passwordoneController,
      builder: (context, passwordoneController) {
        return CustomTextFormField(
          controller: passwordoneController,
          hintText: "msg".tr,
          hintStyle: CustomTextStyles.bodySmallGray900,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_save".tr,
    );
  }
}
