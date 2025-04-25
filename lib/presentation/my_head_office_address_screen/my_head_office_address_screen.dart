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
import '../../widgets/custom_text_form_field.dart';
import 'bloc/my_head_office_address_bloc.dart';
import 'models/my_head_office_address_model.dart';

// ignore_for_file: must_be_immutable
class MyHeadOfficeAddressScreen extends StatelessWidget {
  MyHeadOfficeAddressScreen({Key? key})
      : super(
    key: key,
  );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<MyHeadOfficeAddressBloc>(
      create: (context) => MyHeadOfficeAddressBloc(MyHeadOfficeAddressState(
        myHeadOfficeAddressModelObj: MyHeadOfficeAddressModel(),
      ))
        ..add(MyHeadOfficeAddressInitialEvent()),
      child: MyHeadOfficeAddressScreen(),
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
                  top: 30.h,
                  right: 20.h,
                ),
                child: Column(
                  spacing: 30,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        spacing: 14,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_name_surname".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          _buildSurname(context),
                          Text(
                            "lbl_telephone".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          _buildPhone(context),
                          Text(
                            "lbl_tr_id_number".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          _buildFormtextfill(context),
                          Text(
                            "lbl_country".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          BlocSelector<
                              MyHeadOfficeAddressBloc,
                              MyHeadOfficeAddressState,
                              MyHeadOfficeAddressModel?>(
                            selector: (state) =>
                            state.myHeadOfficeAddressModelObj,
                            builder: (context, myHeadOfficeAddressModelObj) {
                              return CustomDropDown(
                                icon: Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgFramePrimary,
                                    height: 20.h,
                                    width: 20.h,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                iconSize: 20.h,
                                hintText: "lbl_country".tr,
                                items: myHeadOfficeAddressModelObj
                                    ?.dropdownItemList ??
                                    [],
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 24.h,
                                ),
                                borderDecoration:
                                DropDownStyleHelper.fillGrayTL20,
                              );
                            },
                          ),
                          Text(
                            "lbl_province".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          BlocSelector<
                              MyHeadOfficeAddressBloc,
                              MyHeadOfficeAddressState,
                              MyHeadOfficeAddressModel?>(
                            selector: (state) =>
                            state.myHeadOfficeAddressModelObj,
                            builder: (context, myHeadOfficeAddressModelObj) {
                              return CustomDropDown(
                                icon: Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgFramePrimary,
                                    height: 20.h,
                                    width: 20.h,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                iconSize: 20.h,
                                hintText: "lbl_province".tr,
                                items: myHeadOfficeAddressModelObj
                                    ?.dropdownItemList1 ??
                                    [],
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 24.h,
                                ),
                                borderDecoration:
                                DropDownStyleHelper.fillGrayTL20,
                              );
                            },
                          ),
                          Text(
                            "lbl_district".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          BlocSelector<
                              MyHeadOfficeAddressBloc,
                              MyHeadOfficeAddressState,
                              MyHeadOfficeAddressModel?>(
                            selector: (state) =>
                            state.myHeadOfficeAddressModelObj,
                            builder: (context, myHeadOfficeAddressModelObj) {
                              return CustomDropDown(
                                icon: Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgFramePrimary,
                                    height: 20.h,
                                    width: 20.h,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                iconSize: 20.h,
                                hintText: "lbl_district".tr,
                                items: myHeadOfficeAddressModelObj
                                    ?.dropdownItemList2 ??
                                    [],
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 24.h,
                                ),
                                borderDecoration:
                                DropDownStyleHelper.fillGrayTL20,
                              );
                            },
                          ),
                          Text(
                            "lbl_neighbourhood".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          BlocSelector<
                              MyHeadOfficeAddressBloc,
                              MyHeadOfficeAddressState,
                              MyHeadOfficeAddressModel?>(
                            selector: (state) =>
                            state.myHeadOfficeAddressModelObj,
                            builder: (context, myHeadOfficeAddressModelObj) {
                              return CustomDropDown(
                                icon: Container(
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgFramePrimary,
                                    height: 20.h,
                                    width: 20.h,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                iconSize: 20.h,
                                hintText: "lbl_neighbourhood".tr,
                                items: myHeadOfficeAddressModelObj
                                    ?.dropdownItemList3 ??
                                    [],
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 24.h,
                                ),
                                borderDecoration:
                                DropDownStyleHelper.fillGrayTL20,
                              );
                            },
                          ),
                          Text(
                            "lbl_address2".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          _buildAddresstwo(context)
                        ],
                      ),
                    ),
                    _buildSave(context),
                    SizedBox(height: 32.h)
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
        text: "msg_my_head_office_address".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildSurname(BuildContext context) {
    return BlocSelector<MyHeadOfficeAddressBloc, MyHeadOfficeAddressState,
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
  Widget _buildPhone(BuildContext context) {
    return BlocSelector<MyHeadOfficeAddressBloc, MyHeadOfficeAddressState,
        TextEditingController?>(
      selector: (state) => state.phoneController,
      builder: (context, phoneController) {
        return CustomTextFormField(
          controller: phoneController,
          hintText: "lbl_telephone".tr,
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
    );
  }

  /// Section Widget
  Widget _buildFormtextfill(BuildContext context) {
    return BlocSelector<MyHeadOfficeAddressBloc, MyHeadOfficeAddressState,
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
  Widget _buildAddresstwo(BuildContext context) {
    return BlocSelector<MyHeadOfficeAddressBloc, MyHeadOfficeAddressState,
        TextEditingController?>(
      selector: (state) => state.addresstwoController,
      builder: (context, addresstwoController) {
        return CustomTextFormField(
          controller: addresstwoController,
          hintText: "lbl_address2".tr,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.fromLTRB(16.h, 26.h, 16.h, 24.h),
          borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
          filled: true,
          fillColor: appTheme.gray100,
        );
      },
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
