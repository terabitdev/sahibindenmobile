import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listdetermineyo_item_model.dart';

// ignore_for_file: must_be_immutable
class ListdetermineyoItemWidget extends StatelessWidget {
  ListdetermineyoItemWidget(this.listdetermineyoItemModelObj, {Key? key})
      : super(
    key: key,
  );

  ListdetermineyoItemModel listdetermineyoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 246.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(24.h),
            decoration: AppDecoration.cardshadow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              spacing: 12,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listdetermineyoItemModelObj.determineyour!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  listdetermineyoItemModelObj.description!,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeBlack900_1,
                ),
                Text(
                  listdetermineyoItemModelObj.detailed!,
                  style: CustomTextStyles.titleSmallPrimary_1,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 52.h,
              height: 50.h,
              alignment: Alignment.center,
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Text(
                listdetermineyoItemModelObj.group!,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}
