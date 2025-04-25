import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/safe_ecommerce_item_model.dart';

// ignore_for_file: must_be_immutable
class SafeEcommerceItemWidget extends StatelessWidget {
  SafeEcommerceItemWidget(this.safeEcommerceItemModelObj,
      {Key? key, this.onTapRowthingsiexpec})
      : super(
    key: key,
  );

  SafeEcommerceItemModel safeEcommerceItemModelObj;

  VoidCallback? onTapRowthingsiexpec;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowthingsiexpec?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 14.h,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: safeEcommerceItemModelObj.image!,
              height: 50.h,
              width: 52.h,
            ),
            Container(
              width: 136.h,
              margin: EdgeInsets.only(left: 16.h),
              child: Text(
                safeEcommerceItemModelObj.thingsiexpect!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeTeal900.copyWith(
                  height: 1.39,
                ),
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
      ),
    );
  }
}
