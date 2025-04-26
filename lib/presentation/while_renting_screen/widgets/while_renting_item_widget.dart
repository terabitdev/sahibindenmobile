import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/while_renting_item_model.dart';

// ignore_for_file: must_be_immutable
class WhileRentingItemWidget extends StatelessWidget {
  WhileRentingItemWidget(this.whileRentingItemModelObj, {Key? key})
      : super(
    key: key,
  );

  WhileRentingItemModel whileRentingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 14.h,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHome,
            height: 50.h,
            width: 52.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              whileRentingItemModelObj.realestate!,
              style: CustomTextStyles.labelLargeTeal900,
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 38.h,
            width: 38.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.none,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
            ),
          )
        ],
      ),
    );
  }
}
