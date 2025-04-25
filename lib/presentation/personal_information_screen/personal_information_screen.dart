import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/personal_information_bloc.dart';
import 'models/personal_information_model.dart';

class PersonalInformationScreen extends StatelessWidget {
  const PersonalInformationScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalInformationBloc>(
      create: (context) => PersonalInformationBloc(PersonalInformationState(
        personalInformationModelObj: PersonalInformationModel(),
      ))
        ..add(PersonalInformationInitialEvent()),
      child: PersonalInformationScreen(),
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
            left: 20.h,
            top: 20.h,
            right: 20.h,
          ),
          child: Column(
            spacing: 30,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: double.maxFinite,
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_name_surname".tr,
                        style: CustomTextStyles.labelLargeLatoBlack900,
                      ),
                    ),
                    _buildSurname(context),
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
              _buildEdit(context)
            ],
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
    return BlocSelector<PersonalInformationBloc, PersonalInformationState,
        TextEditingController?>(
      selector: (state) => state.userNameController,
      builder: (context, userNameController) {
        return CustomTextFormField(
          controller: userNameController,
          hintText: "lbl_umer1916".tr,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSurname(BuildContext context) {
    return BlocSelector<PersonalInformationBloc, PersonalInformationState,
        TextEditingController?>(
      selector: (state) => state.surnameController,
      builder: (context, surnameController) {
        return CustomTextFormField(
          controller: surnameController,
          hintText: "lbl_muhammad_umer".tr,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return BlocSelector<PersonalInformationBloc, PersonalInformationState,
        TextEditingController?>(
      selector: (state) => state.phoneController,
      builder: (context, phoneController) {
        return CustomTextFormField(
          controller: phoneController,
          hintText: "lbl_0315_7348409".tr,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneone(BuildContext context) {
    return BlocSelector<PersonalInformationBloc, PersonalInformationState,
        TextEditingController?>(
      selector: (state) => state.phoneoneController,
      builder: (context, phoneoneController) {
        return CustomTextFormField(
          controller: phoneoneController,
          hintText: "lbl_0315_7348409".tr,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEdit(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "lbl_edit".tr,
    );
  }
}
