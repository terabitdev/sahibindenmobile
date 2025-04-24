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
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 12.h,
          ),
          decoration: AppDecoration.cardshadow.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "msg_what_s_in_the_real".tr,
                style: theme.textTheme.titleSmall,
              )
            ],
          ),
        ),
        trailing: (expandablelistwItemModelObj.isSelected ?? false)
            ? CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 14.h,
            width: 16.h,
            margin: EdgeInsets.only(right: 2.h))
            : CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 14.h,
          width: 16.h,
          margin: EdgeInsets.only(right: 2.h),
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
    );
  }
}
