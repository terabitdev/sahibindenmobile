import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listview_item_model.dart';

// ignore_for_file: must_be_immutable
class ListviewItemWidget extends StatelessWidget {
  ListviewItemWidget(this.listviewItemModelObj, {Key? key})
      : super(
    key: key,
  );

  ListviewItemModel listviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 58.h,
          child: Text(
            listviewItemModelObj.kadikoy!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.66,
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 16.h,
              width: 174.h,
              margin: EdgeInsets.only(top: 4.h),
              decoration: BoxDecoration(
                color: appTheme.redA700,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 42.h,
          child: Text(
            listviewItemModelObj.zero!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.66,
            ),
          ),
        )
      ],
    );
  }
}
