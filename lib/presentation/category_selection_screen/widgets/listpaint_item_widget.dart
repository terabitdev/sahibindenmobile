import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/listpaint_item_model.dart'; // ignore_for_file: must_be_immutable

class ListpaintItemWidget extends StatelessWidget {
  ListpaintItemWidget(this.listpaintItemModelObj, {Key? key})
      : super(
          key: key,
        );
  ListpaintItemModel listpaintItemModelObj;

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
            imagePath: listpaintItemModelObj.paintWhitewash!,
            height: 50.h,
            width: 50.h,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listpaintItemModelObj.paintwhitewash1!,
                  style: CustomTextStyles.labelLargeTeal900,
                ),
                Text(
                  listpaintItemModelObj
                      .oneMillionSevenHundredEightyNineThousandThreeHundredFourteen!,
                  style: theme.textTheme.labelMedium,
                )
              ],
            ),
          ),
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
