import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/my_product_offers_one_bloc.dart';
import 'models/my_product_offers_one_model.dart'; // ignore_for_file: must_be_immutable

class MyProductOffersOnePage extends StatefulWidget {
  const MyProductOffersOnePage({Key? key})
      : super(
    key: key,
  );

  @override
  MyProductOffersOnePageState createState() => MyProductOffersOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyProductOffersOneBloc>(
      create: (context) => MyProductOffersOneBloc(MyProductOffersOneState(
        myProductOffersOneModelObj: MyProductOffersOneModel(),
      ))
        ..add(MyProductOffersOneInitialEvent()),
      child: MyProductOffersOnePage(),
    );
  }
}

class MyProductOffersOnePageState extends State<MyProductOffersOnePage>
    with AutomaticKeepAliveClientMixin<MyProductOffersOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<MyProductOffersOneBloc, MyProductOffersOneState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(20.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [_buildColumnbagone(context)],
              ),
            ),
          ),
        );
      },
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
            "msg_you_haven_t_bid".tr,
            style: theme.textTheme.titleSmall,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Text(
              "msg_make_offers_on_the".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeBlack900_1,
            ),
          ),
          CustomElevatedButton(
            text: "lbl_discover_now".tr,
            buttonTextStyle: CustomTextStyles.titleSmallOnPrimary_1,
          )
        ],
      ),
    );
  }
}
