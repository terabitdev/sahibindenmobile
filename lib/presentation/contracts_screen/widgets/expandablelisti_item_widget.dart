import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/expandablelisti_item_model.dart';

// ignore_for_file: must_be_immutable
class ExpandablelistiItemWidget extends StatelessWidget {
  ExpandablelistiItemWidget(this.expandablelistiItemModelObj,
      {Key? key, this.onSelectedExpandableList})
      : super(
    key: key,
  );

  ExpandablelistiItemModel expandablelistiItemModelObj;

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
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "msg_annexes_to_the_contract".tr,
                    style: CustomTextStyles.labelLargeTeal900,
                  ),
                )
              ],
            ),
          ),
          trailing: (expandablelistiItemModelObj.isSelected ?? false)
              ? CustomIconButton(
              height: 38.h,
              width: 38.h,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.none,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
              ))
              : CustomIconButton(
            height: 38.h,
            width: 38.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.none,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
            ),
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
