import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listyellowed_item_model.dart';

// ignore_for_file: must_be_immutable
class ListyellowedItemWidget extends StatelessWidget {
  ListyellowedItemWidget(this.listyellowedItemModelObj, {Key? key})
      : super(
    key: key,
  );

  ListyellowedItemModel listyellowedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            listyellowedItemModelObj.yellowed!,
            style: CustomTextStyles.titleSmallSemiBold_1,
          ),
          CustomImageView(
            imagePath: ImageConstant.img36052630611452734,
            height: 142.h,
            width: double.maxFinite,
          ),
          Text(
            listyellowedItemModelObj.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumBluegray400_1.copyWith(
              height: 1.66,
            ),
          ),
          Text(
            listyellowedItemModelObj.more!,
            style: CustomTextStyles.titleSmallPrimary_1,
          )
        ],
      ),
    );
  }
}
