import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/expandablelista_item_model.dart';

// ignore_for_file: must_be_immutable
class ExpandablelistaItemWidget extends StatelessWidget {
  ExpandablelistaItemWidget(this.expandablelistaItemModelObj,
      {Key? key, this.onSelectedExpandableList})
      : super(
    key: key,
  );

  ExpandablelistaItemModel expandablelistaItemModelObj;

  Function(bool)? onSelectedExpandableList;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "lbl_amasya".tr,
              style: theme.textTheme.bodyMedium,
            ),
            Spacer(),
            Text(
              "lbl_29_59".tr,
              style: theme.textTheme.bodyMedium,
            )
          ],
        ),
        trailing: (expandablelistaItemModelObj.isSelected ?? false)
            ? CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 14.h,
            width: 16.h,
            margin: EdgeInsets.only(left: 10.h))
            : CustomImageView(
          imagePath: ImageConstant.imgArrowUp,
          height: 14.h,
          width: 16.h,
          margin: EdgeInsets.only(left: 10.h),
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
