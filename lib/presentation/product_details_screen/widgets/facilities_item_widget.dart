import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/facilities_item_model.dart';

// ignore_for_file: must_be_immutable
class FacilitiesItemWidget extends StatelessWidget {
  FacilitiesItemWidget(this.facilitiesItemModelObj,
      {Key? key, this.onSelectedChipView})
      : super(
    key: key,
  );

  FacilitiesItemModel facilitiesItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 18.h,
        right: 24.h,
        bottom: 18.h,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        facilitiesItemModelObj.layoutThree!,
        style: TextStyle(
          color: (facilitiesItemModelObj.isSelected ?? false)
              ? appTheme.gray100
              : appTheme.blueGray800,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgTelevisionPrimary,
        height: 20.h,
        width: 20.h,
        margin: EdgeInsets.only(right: 8.h),
      ),
      selected: (facilitiesItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: theme.colorScheme.primary,
      side: BorderSide.none,
      shape: (facilitiesItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(
            20.h,
          ))
          : RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          20.h,
        ),
      ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
