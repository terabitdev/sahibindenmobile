import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/listreal_estate_item_model.dart';

// ignore_for_file: must_be_immutable
class ListrealEstateItemWidget extends StatelessWidget {
  ListrealEstateItemWidget(this.listrealEstateItemModelObj,
      {Key? key, this.onTapRowrealestate})
      : super(
    key: key,
  );

  ListrealEstateItemModel listrealEstateItemModelObj;

  VoidCallback? onTapRowrealestate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowrealestate?.call();
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
              imagePath: listrealEstateItemModelObj.realEstateOne!,
              height: 50.h,
              width: 50.h,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 4.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listrealEstateItemModelObj.realestate!,
                        style: CustomTextStyles.labelLargeTeal900,
                      ),
                      Text(
                        listrealEstateItemModelObj.residential!,
                        style: theme.textTheme.labelMedium,
                      )
                    ],
                  ),
                ),
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
