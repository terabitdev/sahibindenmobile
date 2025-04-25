import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/my_product_offers_bloc.dart';
import 'models/myproduct_two_tab_model.dart';

class MyproductTwoTabPage extends StatefulWidget {
  const MyproductTwoTabPage({Key? key})
      : super(
    key: key,
  );

  @override
  MyproductTwoTabPageState createState() => MyproductTwoTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyProductOffersBloc>(
      create: (context) => MyProductOffersBloc(MyProductOffersState(
        myproductTwoTabModelObj: MyproductTwoTabModel(),
      ))
        ..add(MyProductOffersInitialEvent()),
      child: MyproductTwoTabPage(),
    );
  }
}

class MyproductTwoTabPageState extends State<MyproductTwoTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      child: Column(
        children: [_buildColumnbagone(context)],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnbagone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.h,
      ),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.h),
          CustomImageView(
            imagePath: ImageConstant.imgBag,
            height: 64.h,
            width: 72.h,
          ),
          Text(
            "msg_you_don_t_have_any2".tr,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            "msg_add_products_you".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.labelLargeBlack900_1,
          ),
          CustomElevatedButton(
            text: "lbl_post_an_ad_now".tr,
            buttonTextStyle: CustomTextStyles.titleSmallOnPrimary_1,
          )
        ],
      ),
    );
  }
}
