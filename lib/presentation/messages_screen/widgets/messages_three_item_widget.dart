import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/messages_three_item_model.dart';

// ignore_for_file: must_be_immutable
class MessagesThreeItemWidget extends StatelessWidget {
  MessagesThreeItemWidget(this.messagesThreeItemModelObj, {Key? key})
      : super(
    key: key,
  );

  MessagesThreeItemModel messagesThreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.greySoft1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShape50x50,
            height: 50.h,
            width: 50.h,
            radius: BorderRadius.circular(
              24.h,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      messagesThreeItemModelObj.emmettPerry!,
                      style: CustomTextStyles.labelLargeBluegray800,
                    ),
                    SizedBox(
                      width: 228.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_just_messaged_you".tr,
                              style: CustomTextStyles.labelMediumBluegray60001,
                            ),
                            TextSpan(
                              text: "lbl_message".tr,
                              style: CustomTextStyles.labelMediumBluegray800,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_tab".tr,
                              style: CustomTextStyles.labelMediumBluegray60001,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      messagesThreeItemModelObj.time!,
                      style: CustomTextStyles.bodySmallIndigo20001,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
