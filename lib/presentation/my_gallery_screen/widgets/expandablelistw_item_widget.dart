import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/expandablelistw_item_model.dart';

// ignore_for_file: must_be_immutable
class ExpandablelistwItemWidget extends StatelessWidget {
  ExpandablelistwItemWidget(this.expandablelistwItemModelObj,
      {Key? key, this.onSelectedExpandableList})
      : super(
    key: key,
  );

  ExpandablelistwItemModel expandablelistwItemModelObj;

  Function(bool)? onSelectedExpandableList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withValues(
              alpha: 0.1,
            ),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 20.h,
            ),
            decoration: AppDecoration.fillOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 6.h,
                    ),
                    child: Text(
                      "msg_frequently_asked".tr,
                      style: CustomTextStyles.labelLargeTeal900,
                    ),
                  ),
                )
              ],
            ),
          ),
          trailing: (expandablelistwItemModelObj.isSelected ?? false)
              ? CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 22.h,
              width: 24.h)
              : CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 22.h,
            width: 24.h,
          ),
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.h),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere quis orci sit amet consequat.',
              ),
            )
          ],
          onExpansionChanged: (value) {
            onSelectedExpandableList?.call(value);
          },
        ),
      ),
    );
  }
}
