import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/my_delivery_billing_address_four_bloc.dart';
import 'models/my_delivery_billing_address_four_model.dart';

// ignore_for_file: must_be_immutable
class MyDeliveryBillingAddressFourScreen extends StatelessWidget {
  MyDeliveryBillingAddressFourScreen({Key? key})
      : super(
    key: key,
  );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<MyDeliveryBillingAddressFourBloc>(
      create: (context) =>
      MyDeliveryBillingAddressFourBloc(MyDeliveryBillingAddressFourState(
        myDeliveryBillingAddressFourModelObj:
        MyDeliveryBillingAddressFourModel(),
      ))
        ..add(MyDeliveryBillingAddressFourInitialEvent()),
      child: MyDeliveryBillingAddressFourScreen(),
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
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        spacing: 14,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_address_name".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          _buildNameone(context),
                          Text(
                            "lbl_name".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          _buildNamethree(context),
                          Text(
                            "lbl_surname".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          _buildSurnametwo(context),
                          Text(
                            "lbl_country".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          BlocSelector<
                              MyDeliveryBillingAddressFourBloc,
                              MyDeliveryBillingAddressFourState,
                              MyDeliveryBillingAddressFourModel?>(
                            selector: (state) =>
                            state.myDeliveryBillingAddressFourModelObj,
                            builder: (context,
                                myDeliveryBillingAddressFourModelObj) {
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
                                items: myDeliveryBillingAddressFourModelObj
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
                              MyDeliveryBillingAddressFourBloc,
                              MyDeliveryBillingAddressFourState,
                              MyDeliveryBillingAddressFourModel?>(
                            selector: (state) =>
                            state.myDeliveryBillingAddressFourModelObj,
                            builder: (context,
                                myDeliveryBillingAddressFourModelObj) {
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
                                items: myDeliveryBillingAddressFourModelObj
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
                              MyDeliveryBillingAddressFourBloc,
                              MyDeliveryBillingAddressFourState,
                              MyDeliveryBillingAddressFourModel?>(
                            selector: (state) =>
                            state.myDeliveryBillingAddressFourModelObj,
                            builder: (context,
                                myDeliveryBillingAddressFourModelObj) {
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
                                items: myDeliveryBillingAddressFourModelObj
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
                              MyDeliveryBillingAddressFourBloc,
                              MyDeliveryBillingAddressFourState,
                              MyDeliveryBillingAddressFourModel?>(
                            selector: (state) =>
                            state.myDeliveryBillingAddressFourModelObj,
                            builder: (context,
                                myDeliveryBillingAddressFourModelObj) {
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
                                items: myDeliveryBillingAddressFourModelObj
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
                          _buildAddresstwo(context),
                          Text(
                            "lbl_telephone".tr,
                            style: CustomTextStyles.labelLargeBlack900_2,
                          ),
                          _buildPhone(context),
                          _buildRowinvoicetype(context)
                        ],
                      ),
                    ),
                    SizedBox(height: 22.h)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildColumnsave(context),
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
        text: "msg_my_delivery_billing".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildNameone(BuildContext context) {
    return BlocSelector<MyDeliveryBillingAddressFourBloc,
        MyDeliveryBillingAddressFourState, TextEditingController?>(
      selector: (state) => state.nameoneController,
      builder: (context, nameoneController) {
        return CustomTextFormField(
          controller: nameoneController,
          hintText: "lbl_address_name".tr,
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
  Widget _buildNamethree(BuildContext context) {
    return BlocSelector<MyDeliveryBillingAddressFourBloc,
        MyDeliveryBillingAddressFourState, TextEditingController?>(
      selector: (state) => state.namethreeController,
      builder: (context, namethreeController) {
        return CustomTextFormField(
          controller: namethreeController,
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
    );
  }

  /// Section Widget
  Widget _buildSurnametwo(BuildContext context) {
    return BlocSelector<MyDeliveryBillingAddressFourBloc,
        MyDeliveryBillingAddressFourState, TextEditingController?>(
      selector: (state) => state.surnametwoController,
      builder: (context, surnametwoController) {
        return CustomTextFormField(
          controller: surnametwoController,
          hintText: "lbl_surname".tr,
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
  Widget _buildAddresstwo(BuildContext context) {
    return BlocSelector<MyDeliveryBillingAddressFourBloc,
        MyDeliveryBillingAddressFourState, TextEditingController?>(
      selector: (state) => state.addresstwoController,
      builder: (context, addresstwoController) {
        return CustomTextFormField(
          controller: addresstwoController,
          hintText: "lbl_address2".tr,
          contentPadding: EdgeInsets.fromLTRB(16.h, 26.h, 16.h, 24.h),
          borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
          filled: true,
          fillColor: appTheme.gray100,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return BlocSelector<MyDeliveryBillingAddressFourBloc,
        MyDeliveryBillingAddressFourState, TextEditingController?>(
      selector: (state) => state.phoneController,
      builder: (context, phoneController) {
        return CustomTextFormField(
          controller: phoneController,
          hintText: "lbl_telephone".tr,
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
    );
  }

  /// Section Widget
  Widget _buildRowinvoicetype(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "lbl_invoice_type".tr,
              style: CustomTextStyles.labelLargePrimary_1,
            ),
          ),
          Spacer(),
          BlocSelector<MyDeliveryBillingAddressFourBloc,
              MyDeliveryBillingAddressFourState, bool?>(
            selector: (state) => state.individualone,
            builder: (context, individualone) {
              return CustomCheckboxButton(
                text: "lbl_individual".tr,
                value: individualone,
                onChange: (value) {
                  context
                      .read<MyDeliveryBillingAddressFourBloc>()
                      .add(ChangeCheckBoxEvent(value: value));
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: BlocSelector<MyDeliveryBillingAddressFourBloc,
                MyDeliveryBillingAddressFourState, bool?>(
              selector: (state) => state.institutional,
              builder: (context, institutional) {
                return CustomCheckboxButton(
                  text: "lbl_institutional".tr,
                  value: institutional,
                  onChange: (value) {
                    context
                        .read<MyDeliveryBillingAddressFourBloc>()
                        .add(ChangeCheckBox1Event(value: value));
                  },
                );
              },
            ),
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
      margin: EdgeInsets.only(bottom: 12.h),
    );
  }

  /// Section Widget
  Widget _buildColumnsave(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_buildSave(context)],
      ),
    );
  }
}
