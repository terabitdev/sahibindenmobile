import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listnumberof_item_model.dart';

// ignore_for_file: must_be_immutable
class ListnumberofItemWidget extends StatelessWidget {
  ListnumberofItemWidget(this.listnumberofItemModelObj, {Key? key})
      : super(key: key);

  final ListnumberofItemModel listnumberofItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 14.h),
          Row(
            children: [
              CustomImageView(
                imagePath: listnumberofItemModelObj.image!,
                height: 50.h,
                width: 50.h,
              ),
              SizedBox(width: 10.h),
              Expanded(
                child: Text(
                  listnumberofItemModelObj.numberof!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallPrimarySemiBold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            listnumberofItemModelObj.zero!,
            style: theme.textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
