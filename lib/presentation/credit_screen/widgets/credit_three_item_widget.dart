import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/credit_three_item_model.dart';

// ignore_for_file: must_be_immutable
class CreditThreeItemWidget extends StatelessWidget {
  CreditThreeItemWidget(this.creditThreeItemModelObj, {Key? key})
      : super(
    key: key,
  );

  CreditThreeItemModel creditThreeItemModelObj;

  @override
  Widget build(BuildContext context) {
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
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            creditThreeItemModelObj.whatisa!,
            style: CustomTextStyles.titleSmallSemiBold_1,
          ),
          Text(
            creditThreeItemModelObj.aconsumerloan!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
