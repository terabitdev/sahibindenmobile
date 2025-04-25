import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chipviewistanbu_item_model.dart';

// ignore_for_file: must_be_immutable
class ChipviewistanbuItemWidget extends StatelessWidget {
  ChipviewistanbuItemWidget(this.chipviewistanbuItemModelObj,
      {Key? key, this.onSelectedChipView})
      : super(
    key: key,
  );

  ChipviewistanbuItemModel chipviewistanbuItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewistanbuItemModelObj.istanbulOne!,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 15.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (chipviewistanbuItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        side: BorderSide.none,
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
