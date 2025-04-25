import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/product_details_item_model.dart';

// ignore_for_file: must_be_immutable
class ProductDetailsItemWidget extends StatelessWidget {
  ProductDetailsItemWidget(this.productDetailsItemModelObj, {Key? key})
      : super(
    key: key,
  );

  ProductDetailsItemModel productDetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: productDetailsItemModelObj.shapeOne!,
      height: 60.h,
      width: 60.h,
      radius: BorderRadius.circular(
        18.h,
      ),
    );
  }
}
