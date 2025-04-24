import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/get_messages_bloc.dart';
import 'models/get_messages_model.dart'; // ignore_for_file: must_be_immutable

class GetMessagesPage extends StatefulWidget {
  const GetMessagesPage({Key? key})
      : super(
    key: key,
  );

  @override
  GetMessagesPageState createState() => GetMessagesPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<GetMessagesBloc>(
      create: (context) => GetMessagesBloc(GetMessagesState(
        getMessagesModelObj: GetMessagesModel(),
      ))
        ..add(GetMessagesInitialEvent()),
      child: GetMessagesPage(),
    );
  }
}

class GetMessagesPageState extends State<GetMessagesPage>
    with AutomaticKeepAliveClientMixin<GetMessagesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(20.h),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  spacing: 20,
                  children: [
                    _buildColumnpiranlar(context),
                    _buildColumnhakanceyl(context)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTl(BuildContext context) {
    return CustomElevatedButton(
      width: 124.h,
      text: "lbl_1_950_000_tl".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnpiranlar(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.h,
      ),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img36052630611452734,
            height: 68.h,
            width: 102.h,
          ),
          Text(
            "msg_piranlar_maserati".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.labelLargeBlack900_1.copyWith(
              height: 1.66,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text(
                "msg_2_0_hybrid_gt_gebze".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeBluegray40001.copyWith(
                  height: 1.66,
                ),
              ),
            ),
          ),
          _buildTl(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 124.h,
      text: "lbl_0533_505_20_91".tr,
      margin: EdgeInsets.only(left: 16.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_1,
    );
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return BlocSelector<GetMessagesBloc, GetMessagesState,
        TextEditingController?>(
      selector: (state) => state.messageController,
      builder: (context, messageController) {
        return CustomTextFormField(
          controller: messageController,
          hintText: "msg_type_your_message".tr,
          hintStyle: CustomTextStyles.labelLargeBluegray40001,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 10.h,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSend(BuildContext context) {
    return CustomElevatedButton(
      width: 124.h,
      text: "lbl_send".tr.toUpperCase(),
      buttonStyle: CustomButtonStyles.fillPrimaryTL20,
      buttonTextStyle: CustomTextStyles.titleSmallOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnhakanceyl(BuildContext context) {
    return Container(
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
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 106.h,
                    child: Text(
                      "lbl_hakan_ceylan".tr,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall!.copyWith(
                        height: 1.66,
                      ),
                    ),
                  ),
                ),
                _buildTf(context)
              ],
            ),
          ),
          _buildMessage(context),
          _buildSend(context)
        ],
      ),
    );
  }
}
