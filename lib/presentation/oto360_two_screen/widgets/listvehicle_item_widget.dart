import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/listvehicle_item_model.dart';

// ignore_for_file: must_be_immutable
class ListvehicleItemWidget extends StatelessWidget {
  ListvehicleItemWidget(this.listvehicleItemModelObj, {Key? key})
      : super(
    key: key,
  );

  ListvehicleItemModel listvehicleItemModelObj;

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
            imagePath: listvehicleItemModelObj.vehicle!,
            height: 50.h,
            width: 52.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              listvehicleItemModelObj.vehicle1!,
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
