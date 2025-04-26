import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listbmwseeklogo_item_model.dart';

// ignore_for_file: must_be_immutable
class ListbmwseeklogoItemWidget extends StatelessWidget {
  ListbmwseeklogoItemWidget(this.listbmwseeklogoItemModelObj, {Key? key})
      : super(
    key: key,
  );

  ListbmwseeklogoItemModel listbmwseeklogoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: listbmwseeklogoItemModelObj.bmwseeklogo!,
      height: 50.h,
      width: 50.h,
    );
  }
}
