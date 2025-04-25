import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/messages_page_bloc.dart';
import 'models/messages_page_model.dart';

class MessagesTwoTabPage extends StatefulWidget {
  const MessagesTwoTabPage({Key? key})
      : super(
    key: key,
  );

  @override
  MessagesTwoTabPageState createState() => MessagesTwoTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MessagesOneBloc>(
      create: (context) => MessagesOneBloc(MessagesOneState(
        messagesTwoTabModelObj: MessagesTwoTabModel(),
      ))
        ..add(MessagesOneInitialEvent()),
      child: MessagesTwoTabPage(),
    );
  }
}

class MessagesTwoTabPageState extends State<MessagesTwoTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.h),
      child: Column(
        children: [_buildColumnadno(context)],
      ),
    );
  }

  /// Section Widget
  Widget _buildFormtextfill(BuildContext context) {
    return BlocSelector<MessagesOneBloc, MessagesOneState,
        TextEditingController?>(
      selector: (state) => state.formtextfillController,
      builder: (context, formtextfillController) {
        return CustomTextFormField(
          controller: formtextfillController,
          hintText: "lbl_19211_029".tr,
          hintStyle: CustomTextStyles.labelLargeBlack900_2,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFormtextfill1(BuildContext context) {
    return BlocSelector<MessagesOneBloc, MessagesOneState,
        TextEditingController?>(
      selector: (state) => state.formtextfill1Controller,
      builder: (context, formtextfill1Controller) {
        return CustomTextFormField(
          controller: formtextfill1Controller,
          hintText: "lbl_house".tr,
          hintStyle: CustomTextStyles.labelLargeBlack900_2,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return BlocSelector<MessagesOneBloc, MessagesOneState,
        TextEditingController?>(
      selector: (state) => state.dateController,
      builder: (context, dateController) {
        return CustomTextFormField(
          readOnly: true,
          controller: dateController,
          hintText: "lbl_3_27_2025".tr,
          hintStyle: CustomTextStyles.labelLargeBlack900_2,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
          onTap: () {
            onTapDate(context);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPricetwo(BuildContext context) {
    return BlocSelector<MessagesOneBloc, MessagesOneState,
        TextEditingController?>(
      selector: (state) => state.pricetwoController,
      builder: (context, pricetwoController) {
        return CustomTextFormField(
          controller: pricetwoController,
          hintText: "lbl_344_tl".tr,
          hintStyle: CustomTextStyles.labelLargeBlack900_2,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.fromLTRB(14.h, 16.h, 14.h, 14.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnadno(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_ad_no".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildFormtextfill(context),
          Text(
            "lbl_property_type".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildFormtextfill1(context),
          Text(
            "lbl_date_purchased".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildDate(context),
          Text(
            "lbl_price".tr,
            style: CustomTextStyles.labelLargeLatoBlack900,
          ),
          _buildPricetwo(context)
        ],
      ),
    );
  }

  /// Displays a date picker dialog to update the selected date
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapDate(BuildContext context) async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
  }
}
