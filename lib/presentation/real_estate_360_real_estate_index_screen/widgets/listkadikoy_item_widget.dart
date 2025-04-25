import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listkadikoy_item_model.dart';

// ignore_for_file: must_be_immutable
class ListkadikoyItemWidget extends StatelessWidget {
  ListkadikoyItemWidget(this.listkadikoyItemModelObj, {Key? key})
      : super(
    key: key,
  );

  ListkadikoyItemModel listkadikoyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 58.h,
          child: Text(
            listkadikoyItemModelObj.kadikoy!,
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
            child: Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: SizedBox(
                height: 16.h,
                width: 174.h,
                child: ClipRRect(
                  child: LinearProgressIndicator(
                    value: 0,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 42.h,
          child: Text(
            listkadikoyItemModelObj.zero!,
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
