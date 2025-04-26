import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/summary_three_item_model.dart';

// ignore_for_file: must_be_immutable
class SummaryThreeItemWidget extends StatelessWidget {
  SummaryThreeItemWidget(this.summaryThreeItemModelObj, {Key? key})
      : super(
    key: key,
  );

  SummaryThreeItemModel summaryThreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 8,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 50.h,
            width: 52.h,
          ),
          Text(
            summaryThreeItemModelObj.buynow!,
            style: theme.textTheme.titleSmall,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Text(
              summaryThreeItemModelObj.description!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallBlack90012,
            ),
          ),
          CustomElevatedButton(
            height: 30.h,
            text: "msg_i_want_to_sell_products".tr,
            buttonTextStyle: CustomTextStyles.labelLargeOnPrimarySemiBold_1,
          )
        ],
      ),
    );
  }
}
