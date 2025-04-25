import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/my_bank_information_one_bloc.dart';
import 'models/my_bank_information_one_model.dart';

// ignore_for_file: must_be_immutable
class MyBankInformationOneScreen extends StatelessWidget {
  MyBankInformationOneScreen({Key? key})
      : super(
    key: key,
  );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<MyBankInformationOneBloc>(
      create: (context) => MyBankInformationOneBloc(MyBankInformationOneState(
        myBankInformationOneModelObj: MyBankInformationOneModel(),
      ))
        ..add(MyBankInformationOneInitialEvent()),
      child: MyBankInformationOneScreen(),
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
                  left: 18.h,
                  top: 28.h,
                  right: 18.h,
                ),
                child: Column(
                  spacing: 28,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_tr_id_number".tr,
                            style: CustomTextStyles.labelLargeLatoBlack900,
                          ),
                          _buildFormtextfill(context),
                          Text(
                            "lbl_iban".tr,
                            style: CustomTextStyles.labelLargeLatoBlack900,
                          ),
                          _buildFormtextfill1(context),
                          Text(
                            "lbl_name_surname".tr,
                            style: CustomTextStyles.labelLargeLatoBlack900,
                          ),
                          _buildSurname(context),
                          Text(
                            "lbl_office_address".tr,
                            style: CustomTextStyles.labelLargeLatoBlack900,
                          ),
                          _buildAddress(context),
                          Text(
                            "lbl_account_name".tr,
                            style: CustomTextStyles.labelLargeLatoBlack900,
                          ),
                          _buildName(context),
                          _buildRowcurrentaccou(context)
                        ],
                      ),
                    ),
                    _buildSave(context),
                    SizedBox(height: 42.h)
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
        text: "msg_my_bank_information".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildFormtextfill(BuildContext context) {
    return BlocSelector<MyBankInformationOneBloc, MyBankInformationOneState,
        TextEditingController?>(
      selector: (state) => state.formtextfillController,
      builder: (context, formtextfillController) {
        return CustomTextFormField(
          controller: formtextfillController,
          hintText: "lbl_tr_id_number".tr,
          textInputType: TextInputType.number,
          contentPadding: EdgeInsets.fromLTRB(16.h, 26.h, 16.h, 24.h),
          borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
          filled: true,
          fillColor: appTheme.gray100,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFormtextfill1(BuildContext context) {
    return BlocSelector<MyBankInformationOneBloc, MyBankInformationOneState,
        TextEditingController?>(
      selector: (state) => state.formtextfill1Controller,
      builder: (context, formtextfill1Controller) {
        return CustomTextFormField(
          controller: formtextfill1Controller,
          hintText: "lbl_iban".tr,
          contentPadding: EdgeInsets.fromLTRB(16.h, 26.h, 16.h, 24.h),
          borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
          filled: true,
          fillColor: appTheme.gray100,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSurname(BuildContext context) {
    return BlocSelector<MyBankInformationOneBloc, MyBankInformationOneState,
        TextEditingController?>(
      selector: (state) => state.surnameController,
      builder: (context, surnameController) {
        return CustomTextFormField(
          controller: surnameController,
          hintText: "lbl_name_surname".tr,
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
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return BlocSelector<MyBankInformationOneBloc, MyBankInformationOneState,
        TextEditingController?>(
      selector: (state) => state.addressController,
      builder: (context, addressController) {
        return CustomTextFormField(
          controller: addressController,
          hintText: "lbl_office_address".tr,
          contentPadding: EdgeInsets.fromLTRB(16.h, 26.h, 16.h, 24.h),
          borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
          filled: true,
          fillColor: appTheme.gray100,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return BlocSelector<MyBankInformationOneBloc, MyBankInformationOneState,
        TextEditingController?>(
      selector: (state) => state.nameController,
      builder: (context, nameController) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_account_name".tr,
          textInputAction: TextInputAction.done,
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
    );
  }

  /// Section Widget
  Widget _buildRowcurrentaccou(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_current_account".tr,
            style: CustomTextStyles.labelLargePrimary_1,
          ),
          BlocSelector<MyBankInformationOneBloc, MyBankInformationOneState,
              bool?>(
            selector: (state) => state.saveasmycurrent,
            builder: (context, saveasmycurrent) {
              return CustomCheckboxButton(
                text: "msg_save_as_my_current".tr,
                value: saveasmycurrent,
                onChange: (value) {
                  context
                      .read<MyBankInformationOneBloc>()
                      .add(ChangeCheckBoxEvent(value: value));
                },
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "lbl_save".tr,
    );
  }
}
