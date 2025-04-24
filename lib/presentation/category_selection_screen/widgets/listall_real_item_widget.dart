import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/listall_real_item_model.dart'; // ignore_for_file: must_be_immutable

class ListallRealItemWidget extends StatelessWidget {
  ListallRealItemWidget(this.listallRealItemModelObj,
      {Key? key, this.onTapRowallreal})
      : super(
          key: key,
        );
  ListallRealItemModel listallRealItemModelObj;
  VoidCallback? onTapRowallreal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowallreal?.call();
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
              imagePath: listallRealItemModelObj.allRealEstate!,
              height: 50.h,
              width: 50.h,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listallRealItemModelObj.allrealestate1!,
                    style: CustomTextStyles.labelLargeTeal900,
                  ),
                  Text(
                    listallRealItemModelObj
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
      ),
    );
  }
}
