import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/category_item_model.dart';

// ignore_for_file: must_be_immutable
class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget(this.categoryItemModelObj,
      {Key? key, this.onSelectedChipView})
      : super(
    key: key,
  );

  CategoryItemModel categoryItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.h,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        categoryItemModelObj.buttoncategory!,
        style: TextStyle(
          color: (categoryItemModelObj.isSelected ?? false)
              ? appTheme.gray100
              : appTheme.blueGray800,
          fontSize: 10.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (categoryItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: theme.colorScheme.primary,
      side: BorderSide.none,
      shape: (categoryItemModelObj.isSelected ?? false)
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
