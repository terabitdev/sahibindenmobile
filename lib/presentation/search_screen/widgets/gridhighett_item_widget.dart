import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/gridhighett_item_model.dart';

// ignore_for_file: must_be_immutable
class GridhighettItemWidget extends StatelessWidget {
  GridhighettItemWidget(this.gridhighettItemModelObj, {Key? key})
      : super(
    key: key,
  );

  GridhighettItemModel gridhighettItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: gridhighettItemModelObj.highettCommon!,
          height: 104.h,
          width: double.maxFinite,
          radius: BorderRadius.vertical(
            top: Radius.circular(10.h),
          ),
        ),
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 4.h,
          ),
          decoration: AppDecoration.outlineIndigo.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                gridhighettItemModelObj.highettcommon1!,
                style: CustomTextStyles.labelLargeGray900,
              ),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 52.h,
                            child: Text(
                              gridhighettItemModelObj.tlCounter!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgLinkedin,
                                  height: 8.h,
                                  width: 6.h,
                                  alignment: Alignment.bottomCenter,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    gridhighettItemModelObj.timeZone!,
                                    style: CustomTextStyles.poppinsGray40001,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    CustomIconButton(
                      height: 22.h,
                      width: 20.h,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.fillBlue,
                      alignment: Alignment.bottomCenter,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFloatingIconPrimary,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
