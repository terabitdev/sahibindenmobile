import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
    key: key,
  );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
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
              top: 52.h,
              right: 20.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_create_your".tr,
                          style:
                          CustomTextStyles.headlineSmallLatoBluegray800_1,
                        ),
                        TextSpan(
                          text: "lbl_account".tr,
                          style: CustomTextStyles.headlineSmallLatoPrimary,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 22.h),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "msg_quis_nostrud_exercitation".tr,
                    style: CustomTextStyles.bodySmallLatoBluegray6000112,
                  ),
                ),
                SizedBox(height: 48.h),
                _buildForm(context),
                SizedBox(height: 30.h),
                _buildRegister(context)
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
      height: 56.h,
      leadingWidth: 74.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 3.h,
          bottom: 3.h,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.fullNameController,
      builder: (context, fullNameController) {
        return CustomTextFormField(
          controller: fullNameController,
          hintText: "lbl_full_name".tr,
          hintStyle: CustomTextStyles.bodySmallLatoIndigo20001,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 24.h, 10.h, 24.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgLock,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 70.h,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 24.h,
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
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "lbl_email".tr,
          hintStyle: CustomTextStyles.bodySmallLatoIndigo20001,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 24.h, 10.h, 24.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgDownload,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 70.h,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 24.h,
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
  Widget _buildPassword(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
      selector: (state) => state.passwordController,
      builder: (context, passwordController) {
        return CustomTextFormField(
          controller: passwordController,
          hintText: "lbl_password".tr,
          hintStyle: CustomTextStyles.bodySmallLatoIndigo20001,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 24.h, 10.h, 24.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgLocation,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 70.h,
          ),
          obscureText: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 24.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
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
  Widget _buildForm(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        spacing: 14,
        children: [
          _buildFullName(context),
          _buildEmail(context),
          _buildPassword(context),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_terms_of_service".tr,
                  style: CustomTextStyles.labelLargeLatoPrimarySemiBold,
                ),
                Text(
                  "lbl_show_password".tr,
                  style: CustomTextStyles.labelLargeRalewayPrimary,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (){
        onTapRegister(context);
      },
      height: 62.h,
      text: "lbl_register".tr,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapRegister(BuildContext context) {
    NavigatorService.goBack();
  }
}
