import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listwhatisvehic_item_model.dart';

// ignore_for_file: must_be_immutable
class ListwhatisvehicItemWidget extends StatelessWidget {
  ListwhatisvehicItemWidget(this.listwhatisvehicItemModelObj, {Key? key})
      : super(
    key: key,
  );

  ListwhatisvehicItemModel listwhatisvehicItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h),
          Text(
            listwhatisvehicItemModelObj.whatisvehicle!,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            listwhatisvehicItemModelObj.description!,
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
