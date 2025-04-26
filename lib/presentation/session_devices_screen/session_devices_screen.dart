import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/session_devices_bloc.dart';
import 'models/session_devices_model.dart';

class SessionDevicesScreen extends StatelessWidget {
  const SessionDevicesScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<SessionDevicesBloc>(
      create: (context) => SessionDevicesBloc(SessionDevicesState(
        sessionDevicesModelObj: SessionDevicesModel(),
      ))
        ..add(SessionDevicesInitialEvent()),
      child: SessionDevicesScreen(),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_active_sessions".tr,
                    style: CustomTextStyles.titleSmallSemiBold_1,
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.all(24.h),
                    decoration: AppDecoration.cardshadow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      spacing: 14,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_all_sessions_you".tr,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: theme.textTheme.bodyMedium,
                        ),
                        Text(
                          "msg_my_active_device".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        _buildEdittexttwo(context),
                        Text(
                          "lbl_my_other_device".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        _buildEdittextone(context),
                        Container(
                          height: 50.h,
                          width: 304.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary.withValues(
                              alpha: 1,
                            ),
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.black900.withValues(
                                  alpha: 0.1,
                                ),
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(
                                  0,
                                  4,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 60.h),
                  _buildRowlogout(context),
                  SizedBox(height: 106.h)
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
        text: "msg_session_devices".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildEdittexttwo(BuildContext context) {
    return BlocSelector<SessionDevicesBloc, SessionDevicesState,
        TextEditingController?>(
      selector: (state) => state.edittexttwoController,
      builder: (context, edittexttwoController) {
        return CustomTextFormField(
          controller: edittexttwoController,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
          borderDecoration: TextFormFieldStyleHelper.outlineBlack,
          filled: true,
          fillColor: theme.colorScheme.onPrimary.withValues(
            alpha: 1,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEdittextone(BuildContext context) {
    return BlocSelector<SessionDevicesBloc, SessionDevicesState,
        TextEditingController?>(
      selector: (state) => state.edittextoneController,
      builder: (context, edittextoneController) {
        return CustomTextFormField(
          controller: edittextoneController,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
          borderDecoration: TextFormFieldStyleHelper.outlineBlack,
          filled: true,
          fillColor: theme.colorScheme.onPrimary.withValues(
            alpha: 1,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLogout(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        height: 50.h,
        text: "lbl_log_out".tr,
        buttonTextStyle: CustomTextStyles.titleMediumLatoPrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildForgetdevices(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 50.h,
        text: "lbl_forget_devices".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlogout(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [_buildLogout(context), _buildForgetdevices(context)],
      ),
    );
  }
}
