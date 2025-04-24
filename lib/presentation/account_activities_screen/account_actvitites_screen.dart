import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/date_time_utils.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/account_activities_bloc.dart';
import 'models/account_activities_model.dart';

class AccountActivitiesScreen extends StatelessWidget {
  const AccountActivitiesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountActivitiesBloc>(
      create: (context) => AccountActivitiesBloc(AccountActivitiesState(
        accountActivitiesModelObj: AccountActivitiesModel(),
      ))..add(AccountActivitiesInitialEvent()),
      child: AccountActivitiesScreen(),
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
                spacing: 30,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      spacing: 14,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_payment_method".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        BlocSelector<AccountActivitiesBloc,
                            AccountActivitiesState, AccountActivitiesModel?>(
                          selector: (state) => state.accountActivitiesModelObj,
                          builder: (context, accountActivitiesModelObj) {
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
                              hintText: "lbl_payment_method".tr,
                              items: accountActivitiesModelObj?.dropdownItemList ?? [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 24.h,
                              ),
                              borderDecoration: DropDownStyleHelper.fillGrayTL20,
                            );
                          },
                        ),
                        Text(
                          "lbl_status".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        BlocSelector<AccountActivitiesBloc,
                            AccountActivitiesState, AccountActivitiesModel?>(
                          selector: (state) => state.accountActivitiesModelObj,
                          builder: (context, accountActivitiesModelObj) {
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
                              hintText: "lbl_status".tr,
                              items: accountActivitiesModelObj?.dropdownItemList1 ?? [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 24.h,
                              ),
                              borderDecoration: DropDownStyleHelper.fillGrayTL20,
                            );
                          },
                        ),
                        Text(
                          "lbl_product_type".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        BlocSelector<AccountActivitiesBloc,
                            AccountActivitiesState, AccountActivitiesModel?>(
                          selector: (state) => state.accountActivitiesModelObj,
                          builder: (context, accountActivitiesModelObj) {
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
                              hintText: "lbl_product_type".tr,
                              items: accountActivitiesModelObj?.dropdownItemList2 ?? [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 24.h,
                              ),
                              borderDecoration: DropDownStyleHelper.fillGrayTL20,
                            );
                          },
                        ),
                        Text(
                          "lbl_start_date".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        BlocSelector<AccountActivitiesBloc,
                            AccountActivitiesState, TextEditingController?>(
                          selector: (state) => state.dateController,
                          builder: (context, dateController) {
                            return CustomTextFormField(
                              readOnly: true,
                              controller: dateController,
                              hintText: "lbl_start_date".tr,
                              suffix: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 24.h,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary20x20,
                                  height: 20.h,
                                  width: 20.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              suffixConstraints: BoxConstraints(
                                maxHeight: 70.h,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 24.h,
                              ),
                              borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
                              filled: true,
                              fillColor: appTheme.gray100,
                              onTap: () {
                                onTapDate(context);
                              },
                            );
                          },
                        ),
                        Text(
                          "lbl_end_date".tr,
                          style: CustomTextStyles.labelLargeBlack900_2,
                        ),
                        BlocSelector<AccountActivitiesBloc,
                            AccountActivitiesState, TextEditingController?>(
                          selector: (state) => state.dateoneController,
                          builder: (context, dateoneController) {
                            return CustomTextFormField(
                              readOnly: true,
                              controller: dateoneController,
                              hintText: "lbl_end_date".tr,
                              textInputAction: TextInputAction.done,
                              suffix: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 24.h,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFramePrimary20x20,
                                  height: 20.h,
                                  width: 20.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              suffixConstraints: BoxConstraints(
                                maxHeight: 70.h,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 24.h,
                              ),
                              borderDecoration: TextFormFieldStyleHelper.fillGrayTL20,
                              filled: true,
                              fillColor: appTheme.gray100,
                              onTap: () {
                                onTapDateone(context);
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    height: 50.h,
                    text: "lbl_filter".tr,
                  ),
                  SizedBox(height: 54.h),
                ],
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
        text: "msg_account_activities".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [accountActivitiesModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapDate(BuildContext context) async {
    var initialState = BlocProvider.of<AccountActivitiesBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      context.read<AccountActivitiesBloc>().add(ChangeDateEvent(date: dateTime));
      initialState.dateController?.text = dateTime.format(pattern: dateTimeFormatPattern);
    }
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [accountActivitiesModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapDateone(BuildContext context) async {
    var initialState = BlocProvider.of<AccountActivitiesBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      context.read<AccountActivitiesBloc>().add(ChangeDateEvent1(date: dateTime));
      initialState.dateoneController?.text = dateTime.format(pattern: dateTimeFormatPattern);
    }
  }
}
