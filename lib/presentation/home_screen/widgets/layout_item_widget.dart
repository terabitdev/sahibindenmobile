import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/layout_item_model.dart';

// ignore_for_file: must_be_immutable
class LayoutItemWidget extends StatelessWidget {
  LayoutItemWidget(this.layoutItemModelObj, {Key? key})
      : super(
    key: key,
  );

  LayoutItemModel layoutItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 268.h,
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.greySoft1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 140.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: CustomIconButton(
                      height: 24.h,
                      width: 24.h,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.outline,
                      alignment: Alignment.topLeft,
                      child: CustomImageView(
                        imagePath: layoutItemModelObj.buttonfavorite!,
                      ),
                    ),
                  ),
                  Container(
                    height: 140.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: layoutItemModelObj.image!,
                          height: 140.h,
                          width: double.maxFinite,
                          radius: BorderRadius.circular(
                            24.h,
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 6.h),
                          child: Column(
                            spacing: 78,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 24.h,
                                width: 26.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgFavorite,
                                      height: 6.h,
                                      width: 10.h,
                                    ),
                                    CustomIconButton(
                                      height: 24.h,
                                      width: 24.h,
                                      padding: EdgeInsets.all(6.h),
                                      decoration:
                                      IconButtonStyleHelper.outlineTL12,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgFavorite,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              CustomElevatedButton(
                                height: 22.h,
                                width: 56.h,
                                text: "lbl_apartment".tr,
                                margin: EdgeInsets.only(left: 4.h),
                                buttonStyle: CustomButtonStyles.outline,
                                buttonTextStyle:
                                CustomTextStyles.labelSmallRalewayOnPrimary,
                                hasBlurBackground: true,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 110.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  layoutItemModelObj.skydandelionsap!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeRalewayBluegray800.copyWith(
                    height: 1.50,
                  ),
                ),
                SizedBox(height: 4.h),
                SizedBox(
                  width: double.maxFinite,
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
                          layoutItemModelObj.text!,
                          style: theme.textTheme.labelSmall,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: layoutItemModelObj.jakartaindonesi!,
                        height: 8.h,
                        width: 8.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          layoutItemModelObj.jakartaindonesi1!,
                          style:
                          CustomTextStyles.bodySmallRalewayBluegray600018,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 28.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text(
                        layoutItemModelObj.price!,
                        style:
                        CustomTextStyles.titleMediumMontserratBluegray800,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          layoutItemModelObj.month!,
                          style: CustomTextStyles.labelSmallBluegray800,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
