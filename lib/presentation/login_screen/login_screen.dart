import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../domain/googleauth/google_auth_helper.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/login_bloc.dart';
import 'models/login_model.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
    key: key,
  );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState(
        loginModelObj: LoginModel(),
      ))
        ..add(LoginInitialEvent()),
      child: LoginScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary.withValues(
        alpha: 1,
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUndrawCityLifeGnpr,
                      height: 174.h,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 6.h),
                    ),
                    SizedBox(height: 34.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 38.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_let_s".tr,
                                style: CustomTextStyles
                                    .headlineSmallLatoBluegray800_1,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "lbl_sign_in".tr,
                                style:
                                CustomTextStyles.headlineSmallLatoPrimary,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 38.h),
                        child: Text(
                          "msg_quis_nostrud_exercitation".tr,
                          style: CustomTextStyles.bodySmallLatoBluegray6000112,
                        ),
                      ),
                    ),
                    SizedBox(height: 32.h),
                    _buildForm(context),
                    SizedBox(height: 30.h),
                    _buildSignin(context),
                    SizedBox(height: 22.h),
                    _buildLoginone(context),
                    SizedBox(height: 52.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_don_t_have_an_account".tr,
                            style: CustomTextStyles.bodySmallLatoBluegray60001,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap=(){
                              onTapRegister(context);
                            },
                            text: "lbl_register".tr,
                            style: CustomTextStyles.labelLargeLatoPrimary,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 48.h)
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
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<LoginBloc, LoginState, TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "lbl_email".tr,
          hintStyle: CustomTextStyles.bodySmallRalewayIndigo20001,
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
    return BlocSelector<LoginBloc, LoginState, TextEditingController?>(
      selector: (state) => state.passwordController,
      builder: (context, passwordController) {
        return CustomTextFormField(
          controller: passwordController,
          hintText: "lbl_password".tr,
          hintStyle: CustomTextStyles.bodySmallRalewayIndigo20001,
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
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        spacing: 12,
        children: [
          _buildEmail(context),
          _buildPassword(context),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_forgot_password".tr,
                  style: CustomTextStyles.labelLargeRalewayPrimary,
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
  Widget _buildSignin(BuildContext context) {
    return CustomElevatedButton(
      height: 62.h,
      text: "lbl_sign_in".tr,
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      onPressed: () {
        onTapSignin(context);
      },
    );
  }

  /// Section Widget
  Widget _buildOr(BuildContext context) {
    return CustomElevatedButton(
      height: 22.h,
      width: 34.h,
      text: "lbl_or".tr,
      buttonStyle: CustomButtonStyles.fillOnPrimary,
      buttonTextStyle: CustomTextStyles.labelMediumRalewayIndigo20001,
    );
  }

  /// Section Widget
  Widget _buildLoginone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        spacing: 20,
        children: [
          _buildOr(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomIconButton(
                height: 70.h,
                width: 166.h,
                padding: EdgeInsets.all(22.h),
                decoration: IconButtonStyleHelper.fillGray,
                onTap: () {
                  onTapBtnGoogleone(context);
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgGoogle,
                ),
              ),
              CustomIconButton(
                height: 70.h,
                width: 166.h,
                padding: EdgeInsets.all(22.h),
                decoration: IconButtonStyleHelper.fillGray,
                onTap: () {
                  onTapBtnFacebookone(context);
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgFacebook,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  onTapRegister(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSignin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  onTapBtnGoogleone(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapBtnFacebookone(BuildContext context) async {
    await FacebookAuthHelper()
        .facebookSignInProcess()
        .then((facebookUser) {})
        .catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
