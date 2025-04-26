import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listdfsk_e5_suv_item_model.dart';

// ignore_for_file: must_be_immutable
class ListdfskE5SuvItemWidget extends StatelessWidget {
  ListdfskE5SuvItemWidget(this.listdfskE5SuvItemModelObj, {Key? key})
      : super(
    key: key,
  );

  ListdfskE5SuvItemModel listdfskE5SuvItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img36052630611452734,
            height: 154.h,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 58.h),
          ),
          Text(
            listdfskE5SuvItemModelObj.dfske5suv!,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            listdfskE5SuvItemModelObj.tlCounter!,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            listdfskE5SuvItemModelObj.thereareone!,
            style: CustomTextStyles.labelLargeBluegray400,
          ),
          Text(
            listdfskE5SuvItemModelObj.showpricelist!,
            style: CustomTextStyles.labelLargePrimary,
          ),
          SizedBox(height: 12.h)
        ],
      ),
    );
  }
}
