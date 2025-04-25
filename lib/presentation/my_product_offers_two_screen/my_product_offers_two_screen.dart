import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/my_product_offers_two_bloc.dart';
import 'models/my_product_offers_two_model.dart';

class MyProductOffersTwoScreen extends StatelessWidget {
  const MyProductOffersTwoScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyProductOffersTwoBloc>(
      create: (context) => MyProductOffersTwoBloc(MyProductOffersTwoState(
        myProductOffersTwoModelObj: MyProductOffersTwoModel(),
      ))
        ..add(MyProductOffersTwoInitialEvent()),
      child: MyProductOffersTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyProductOffersTwoBloc, MyProductOffersTwoState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: theme.colorScheme.onPrimary.withValues(
            alpha: 1,
          ),
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 20.h,
                top: 20.h,
                right: 20.h,
              ),
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
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_my_product_offers".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnbagone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
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
            "msg_you_don_t_have_any3".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_sell_your_unused".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeBlack900_1,
            ),
          ),
          CustomElevatedButton(
            text: "lbl_get_a_quote_now".tr,
            buttonTextStyle: CustomTextStyles.titleSmallOnPrimary_1,
            onPressed: () {
              onTapGetaquotenow(context);
            },
          )
        ],
      ),
    );
  }

  /// Navigates to the deviceInformationScreen when the action is triggered.
  onTapGetaquotenow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.deviceInformationScreen,
    );
  }
}
