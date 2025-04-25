import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/gridwings_tower_item_model.dart';

// ignore_for_file: must_be_immutable
class GridwingsTowerItemWidget extends StatelessWidget {
  GridwingsTowerItemWidget(this.gridwingsTowerItemModelObj, {Key? key})
      : super(
    key: key,
  );

  GridwingsTowerItemModel gridwingsTowerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.greySoft1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 160.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: gridwingsTowerItemModelObj.wingsTowerOne!,
                  height: 160.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Column(
                    spacing: 94,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 24.h,
                        width: 24.h,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.outlineTL12,
                        child: CustomImageView(
                          imagePath: gridwingsTowerItemModelObj.favoriteOne!,
                        ),
                      ),
                      Container(
                        decoration: AppDecoration.outline2.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 8,
                              sigmaY: 8,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.h,
                                vertical: 4.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    gridwingsTowerItemModelObj.price!,
                                    style: CustomTextStyles
                                        .labelLargeMontserratGray100,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      gridwingsTowerItemModelObj.month!,
                                      style: CustomTextStyles.montserratGray100,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                gridwingsTowerItemModelObj.wingsTowerTwo!,
                style: CustomTextStyles.labelLargeRalewayBluegray800,
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 8.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSignal,
                  height: 8.h,
                  width: 8.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    gridwingsTowerItemModelObj.text!,
                    style: theme.textTheme.labelSmall,
                  ),
                ),
                CustomImageView(
                  imagePath: gridwingsTowerItemModelObj.imageOne!,
                  height: 8.h,
                  width: 8.h,
                  margin: EdgeInsets.only(left: 6.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    gridwingsTowerItemModelObj.jakartaindonesi!,
                    style: CustomTextStyles.bodySmallRalewayBluegray600018,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.h)
        ],
      ),
    );
  }
}
