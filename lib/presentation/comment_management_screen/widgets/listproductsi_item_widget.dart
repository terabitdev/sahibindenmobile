import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/listproductsi_item_model.dart'; // ignore_for_file: must_be_immutable

class ListproductsiItemWidget extends StatelessWidget {
  ListproductsiItemWidget(this.listproductsiItemModelObj,
      {Key? key, this.onTapRowproductsi})
      : super(
          key: key,
        );
  ListproductsiItemModel listproductsiItemModelObj;
  VoidCallback? onTapRowproductsi;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowproductsi?.call();
      },
      child: Container(
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
              imagePath: listproductsiItemModelObj.image!,
              height: 50.h,
              width: 52.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                listproductsiItemModelObj.productsi!,
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
      ),
    );
  }
}
